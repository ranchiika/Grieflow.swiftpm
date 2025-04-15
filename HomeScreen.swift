import SwiftUI

struct HomeScreen: View {
    @State private var currentPage = 0
    
    var body: some View {
        NavigationView { 
            VStack(alignment: .leading) {

                Text("Grieflow")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .fontWeight(.bold)
                
                Text("Let’s release your feeling here")
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding(.bottom, 10)
                
                VStack(spacing: 0) {
                    NavigationLink(destination: TellingScreen()) {
                        CardButton(
                            icon: "bubble.left.and.bubble.right.fill",
                            iconColor: .black,
                            title: "Telling",
                            subtitle: "Reflex yourself by tell everything"
                        )
                    }
                    
                    Divider()
                    
                   
                    NavigationLink(destination: WritingScreen()) {
                        CardButton(
                            icon: "pencil",
                            iconColor: .black,
                            title: "Writing",
                            subtitle: "Write a letter for someone you loved"
                        )
                    }
                    
                    Divider()
                    
                    NavigationLink(destination: WordAffirmationScreen()) {
                        CardButton(
                            icon: "heart.fill",
                            iconColor: .black,
                            title: "Warm word",
                            subtitle: "words that will hug and warm you"
                        )
                    }
                    
                    
                }
                .background(Color.white)
                .cornerRadius(15)
                
                Spacer()
            }
            .padding()
            .padding(.top, 20)
            .background(Color(red: 0.95, green: 0.95, blue: 0.97))
        }
    }
}

struct CardButton: View {
    let icon: String
    let iconColor: Color
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(iconColor)
                .font(.title2)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.black)
                
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Image(systemName: "info.circle")
                .foregroundColor(.gray)
        }
        .padding()
    }
}
