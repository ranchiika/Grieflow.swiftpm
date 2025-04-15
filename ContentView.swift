import SwiftUI

struct ContentView: View {
    @State private var currentPage = 0
    @State private var isHomeScreenActive = false 
    
    var body: some View {
        if isHomeScreenActive {
            HomeScreen()
        } else {
            OnboardingScreen(currentPage: $currentPage, isHomeScreenActive: $isHomeScreenActive)
        }
    }
}

struct OnboardingScreen: View {
    @Binding var currentPage: Int
    @Binding var isHomeScreenActive: Bool
    
    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                VStack {
                    //Slide 1
                    Image("1")
                        .resizable() 
                        .scaledToFit()
                        .padding(10)
                        .frame(width: 200, height: 200)
                    Text("When you are left by someone you loved,")
                        .multilineTextAlignment(.center)
                        .frame(width: 296, alignment: .top)
                        .foregroundColor(.black)
                        .padding(.vertical, 20)
                        .font(
                            Font.custom("SF Pro", size: 14)
                                .weight(.semibold)
                        )
                    
                    
                    Text("you will be confused, wondering, 'What happened?' ")
                        .font(
                            Font.custom("SF Pro", size: 14)
                                .weight(.black)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 296, alignment: .top)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .tag(0)
                
                // Slide 2
                VStack {
                    Image("2_img")
                        .resizable()
                        .scaledToFit()
                        .padding(10)
                        .frame(width: 300, height: 300) 
                    Text("What happened to my feelings?")
                        .multilineTextAlignment(.center)
                        .frame(width: 296, alignment: .top)
                        .foregroundColor(.black)
                        .padding(.vertical, 20)
                        .font(
                            Font.custom("SF Pro", size: 14)
                                .weight(.semibold)
                        )
                    
                    
                    Text("And you won’t know what you should do.")
                        .font(
                            Font.custom("SF Pro", size: 14)
                                .weight(.black)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 296, alignment: .top)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .tag(1)
                
                // Slide 3
                VStack {
                    Image("3_img")
                        .resizable()
                        .scaledToFit()
                        .padding(10)
                        .frame(width: 300, height: 300)
                    Text("Sometimes, you think that being strong means not crying.")
                        .multilineTextAlignment(.center)
                        .frame(width: 296, alignment: .top)
                        .foregroundColor(.black)
                        .padding(.vertical, 20)
                        .font(
                            Font.custom("SF Pro", size: 14)
                                .weight(.semibold)
                        )
                    
                    
                    Text("Hey, you're wrong. Crying while grieving is normal and something you must do.")
                        .font(
                            Font.custom("SF Pro", size: 14)
                                .weight(.black)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 296, alignment: .top)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .tag(2)
                
                // Slide 4
                VStack {
                    Image("4_img")
                        .resizable()
                        .scaledToFit()
                        .padding(10)
                        .frame(width: 300, height: 300)
                    Text("In grieving, we need to release our feelings to maintain mental health.")
                        .multilineTextAlignment(.center)
                        .frame(width: 296, alignment: .top)
                        .foregroundColor(.black)
                        .padding(.vertical, 20)
                        .font(
                            Font.custom("SF Pro", size: 14)
                                .weight(.semibold)
                        )
                    
                    
                    Text("Life it’s still going on.")
                        .font(
                            Font.custom("SF Pro", size: 14)
                                .weight(.black)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 296, alignment: .top)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .tag(3)
                
                // Slide 5
                VStack {
                    Image("5_img")
                        .resizable()
                        .scaledToFit()
                        .padding(10)
                        .frame(width: 200, height: 200)
                    Text("Accepting grief as part of our daily life is not easy,")
                        .multilineTextAlignment(.center)
                        .frame(width: 296, alignment: .top)
                        .foregroundColor(.black)
                        .padding(.vertical, 20)
                        .font(
                            Font.custom("SF Pro", size: 14)
                                .weight(.semibold)
                        )
                    
                    
                    Text("but, let Grieflow help you step-by-step.")
                        .font(
                            Font.custom("SF Pro", size: 14)
                                .weight(.black)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 296, alignment: .top)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .tag(4)
                
                // Slide 6
                VStack {
                    Image("6_img")
                        .resizable()
                        .scaledToFit()
                        .padding(10)
                        .frame(width: 300, height: 300)
                    Text("By expressing and writing everything you feel,")
                        .multilineTextAlignment(.center)
                        .frame(width: 296, alignment: .top)
                        .foregroundColor(.black)
                        .padding(.vertical, 20)
                        .font(
                            Font.custom("SF Pro", size: 14)
                                .weight(.semibold)
                        )
                    
                    
                    Text("let's befriend grief and let it flow!")
                        .font(
                            Font.custom("SF Pro", size: 14)
                                .weight(.black)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 296, alignment: .top)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .tag(5)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .accentColor(.gray)
            
            // Tombol Next atau Start
            Button(action: {
                if currentPage < 5 {
                    currentPage += 1
                } else {
                    isHomeScreenActive = true
                }
            }) {
                Text(currentPage == 5 ? "Start" : "Next")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(currentPage == 5 ? Color.black : Color.white)
                    .foregroundColor(currentPage == 5 ? .white : .black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                    )
            }
            .padding(.horizontal)
            .padding()
        }
        .background(Color.white)
        
    }
}
