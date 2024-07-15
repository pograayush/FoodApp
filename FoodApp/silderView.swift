import SwiftUI
import Supabase
struct SliderView: View {
    @State private var currentIndex = 0
    @State private var showLoginView = false
    let slides = [
        (image: "Group 3", title: "Order for Food", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua", buttonText: "Next"),
        (image: "Group 4", title: "Easy Payment", description: "We ensure quick and safe delivery of your food right at your doorstep", buttonText: "Next"),
        (image: "Group 5", title: "Fast Delivery", description: "Sit back, relax, and enjoy your freshly prepared meal", buttonText: "Get Started")
    ]
    
    var body: some View {
        ZStack {
            Color(red: 0.25, green: 0.26, blue: 0.31)
                .ignoresSafeArea()
            
            VStack {
                Image(slides[currentIndex].image)
                
                Text(slides[currentIndex].title)
                    .font(.custom("Poppins-Medium", size: 40))
                    .foregroundColor(Color(red: 0.02, green: 0.67, blue: 0.27))
                    .multilineTextAlignment(.center)
                
                Text(slides[currentIndex].description)
                    .font(.custom("Poppins-Medium", size: 15))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Spacer()
                
                HStack {
                    ForEach(0..<slides.count, id: \.self) { index in
                        Circle()
                            .fill(index == currentIndex ? Color.white : Color.gray)
                            .frame(width: 8, height: 8)
                    }
                }
                .padding(.bottom, 30)
                
                Button(action: {
                    withAnimation {
                        if currentIndex < slides.count - 1 {
                            currentIndex += 1
                            
                        } else {
                            showLoginView = true
                        }
                    }
                    
                }) {
                    Text(slides[currentIndex].buttonText)
                        .font(.custom("Poppins-SemiBold", size: 18))
                        .frame(width: 370, height: 60)
                        .background(Color(red: 0.02, green: 0.67, blue: 0.27))
                        .foregroundColor(.white)
                        .cornerRadius(25)
                }.fullScreenCover(isPresented: $showLoginView, content: {
                    LoginView()
                })
                .padding(.bottom, 50)
            }
            .padding(.top, 50)
        }
    }
}

#Preview {
    SliderView()
}
