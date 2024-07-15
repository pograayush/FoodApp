import SwiftUI

struct CreateAccountView: View {
    
    @State private var number = ""
    
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
                        Image("accountCreate").frame(width: 252, height: 234.05)
                        
                        Text("Create a New Account")
                            .font(.custom("Poppins-Medium", size: 30))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center).padding()
                        
                        TextField("", text: $number)
                            .placeholder(when: number.isEmpty) {
                                Text("Phone Number")
                                    .foregroundColor(.white)
                                    .padding(.leading, 15)
                            }
                            .padding()
                            .background(Color(red: 0.01, green: 0.04, blue: 0.15))
                            .cornerRadius(8)
                            .foregroundColor(.white)
                            .textFieldStyle(PlainTextFieldStyle())
                            .frame(width: 370, height: 60)
                    }
                    
                    VStack {
                        HStack {
                            Divider()
                                .background(Color.white)
                                .frame(width: 100)
                            Text("or")
                                .font(.custom("Poppins-SemiBold", size: 18))
                                .foregroundColor(.white)
                            Divider()
                                .background(Color.white)
                                .frame(width: 100)
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
                                print("Sign UP tapped")
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
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
