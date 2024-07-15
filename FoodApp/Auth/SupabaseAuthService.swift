//
//  SupabaseAuthService.swift
//  FoodApp
//
//  Created by Deepak Nagar on 15/07/24.
//

import Foundation


class SupabaseAuthService {
    static let shared = SupabaseAuthService()
    
    private let supabaseURL = "https://uyrtqslkshfahjrqqcfo.supabase.co"
    private let supabaseKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV5cnRxc2xrc2hmYWhqcnFxY2ZvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjEwMTk2MzYsImV4cCI6MjAzNjU5NTYzNn0.23EI4yB7Bd_RH6KsHK_vwK-EgCc9p1otNN_RaqZIiBc"
    
    private init() {}
    
    
    func signUp(email: String, password: String, completion: @escaping (Result<[String: Any], Error>) -> Void) {
        let url = URL(string: "\(supabaseURL)/auth/v1/signup")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue(supabaseKey, forHTTPHeaderField: "apikey")
        
        let parameters: [String: Any] = ["email": email, "password": password]
        request.httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: [])
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "No data received"])))
                return
            }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    completion(.success(json))
                } else {
                    completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid response format"])))
                }
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
   
    func signIn(email: String, password: String, completion: @escaping (Result<[String: Any], Error>) -> Void) {
        let url = URL(string: "\(supabaseURL)/auth/v1/token?grant_type=password")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue(supabaseKey, forHTTPHeaderField: "apikey")
        
        let parameters: [String: Any] = ["email": email, "password": password]
        request.httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: [])
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "No data received"])))
                return
            }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    completion(.success(json))
                } else {
                    completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid response format"])))
                }
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
