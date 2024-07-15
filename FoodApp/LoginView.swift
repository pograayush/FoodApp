import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Color(red: 0.25, green: 0.26, blue: 0.31)
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .leading, spacing: 6) {
                    HStack {
                        Button(action: {
                            print("Back button tapped")
                        }) {
                            Image(systemName: "arrow.backward")
                                .imageScale(.large)
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal)
                    }
                    VStack {
                        Image("login").frame(width: 348.74, height: 302)
                        
                        Text("Let’s You In")
                            .font(.custom("Poppins-Medium", size: 50))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center).padding()
                        
                        VStack(spacing: 20) {
                            Button(action: {
                                print("Continue with Facebook tapped")
                            }) {
                                HStack {
                                    Image("facebook")
                                        .foregroundColor(.white)
                                    Text("Continue with Facebook")
                                        .font(.custom("Poppins-SemiBold", size: 18))
                                        .foregroundColor(.white)
                                }
                                .frame(width: 370, height: 60)
                                .background(Color(red: 0.01, green: 0.04, blue: 0.15).opacity(1))
                                .cornerRadius(8)
                            }
                            
                            Button(action: {
                                print("Continue with Google tapped")
                            }) {
                                HStack {
                                    Image("google")
                                        .foregroundColor(.white)
                                    Text("Continue with Google")
                                        .font(.custom("Poppins-SemiBold", size: 18))
                                        .foregroundColor(.white)
                                }
                                .frame(width: 370, height: 60)
                                .background(Color(red: 0.01, green: 0.04, blue: 0.15).opacity(1))
                                .cornerRadius(8)
                            }
                            
                            Button(action: {
                                print("Continue with Apple tapped")
                            }) {
                                HStack {
                                    Image("apple-logo")
                                        .foregroundColor(.white)
                                    Text("Continue with Apple")
                                        .font(.custom("Poppins-SemiBold", size: 18))
                                        .foregroundColor(.white)
                                }
                                .frame(width: 370, height: 60)
                                .background(Color(red: 0.01, green: 0.04, blue: 0.15).opacity(1))
                                .cornerRadius(8)
                            }
                        }
                    }
                }
                
                VStack {
                    HStack {
                        VStack {
                            Divider()
                                .background(Color.white)
                                .frame(width: 100)
                        }
                        Text("or")
                            .font(.custom("Poppins-SemiBold", size: 18))
                            .foregroundColor(.white)
                        VStack {
                            Divider()
                                .background(Color.white)
                                .frame(width: 100)
                        }
                    }
                    .padding(.vertical)
                    
                    Button(action: {
                        print("Sign in with Contact Number tapped")
                    }) {
                        Text("Sign in with Contact Number")
                            .font(.custom("Poppins-SemiBold", size: 15))
                            .foregroundColor(.white)
                            .frame(width: 370, height: 60)
                            .background(Color.green)
                            .cornerRadius(8)
                    }
                    
                    HStack {
                        
                        Text("Create a new account >")
                            .font(.custom("Poppins-Regular", size: 15))
                            .foregroundColor(.white)
                            
                        Button(action: {
                            print("Sign in with Contact Number tapped")
                        }) {
                            Text("Sign UP")
                                .font(.custom("Poppins-SemiBold", size: 15))
                                .foregroundColor(.green)
                               
                                .cornerRadius(8)
                        }
                    }.padding(.top)
                }
                .padding(.vertical)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
