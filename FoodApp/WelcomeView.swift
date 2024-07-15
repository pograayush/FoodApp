import SwiftUI

struct WelcomeView: View {
    @State private var showSliderView = false
    var body: some View {
        
        ZStack {
           
            Image("pizza")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Text("Welcome to Foodies!👋")
                    .multilineTextAlignment(.center)
                    .font(.custom("Poppins-SemiBold", size: 35))
                    .foregroundColor(Color(red: 0.02, green: 0.67, blue: 0.27).opacity(1))
                    .padding()
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
                    .font(.custom("Poppins-Regular", size: 14))
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .multilineTextAlignment(.leading)
                
                Button(action: {
                    showSliderView = true
                }) {
                    Text("Get Started...!")
                        .font(.custom("Poppins-SemiBold", size: 18))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }.fullScreenCover(isPresented: $showSliderView) {
                    SliderView()
                    
                }
                .padding(.top, 20)
                

            }
        }
    }
}

#Preview {
    WelcomeView()
}
