import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color(red: 0.25, green: 0.26, blue: 0.31)
                .ignoresSafeArea()
            HStack {
                
                HStack(alignment: .top) {
                    Image("userPhoto")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .padding(.leading)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        if #available(iOS 15.0, *) {
                            Text("Customer")
                                .font(.system(size: 12))
                                .foregroundStyle(.white)
                        } else {
                            
                        }
                        HStack {
                            if #available(iOS 15.0, *) {
                                Text("John K Square")
                                    .font(.custom("Poppins-Medium", size: 18))
                                    .foregroundStyle(.white)
                            } else {
                                
                            }
                            Button(action: {
                                
                            }) {
                                Image("drop")
                                    .foregroundColor(.white)
                                    .frame(width: 15, height: 15)
                            }
                        }
                    }
                    
                }
                
                Spacer()
                
                HStack {
                    Button(action: {
                        
                    }) {
                        Image("bell")
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                    }
                    .padding()
                    Button(action: {
                        
                    }) {
                        Image("search")
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                    }
                }
                .padding(.trailing)
            }
            if #available(iOS 15.0, *) {
               //.searchable(text: $searchText)
            } else {
               
            }
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
