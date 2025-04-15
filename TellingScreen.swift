import SwiftUI

struct TellingScreen: View {
    @State private var currentPage = 0
    @State private var isHomeScreenActive = false
    
    var body: some View {
        if isHomeScreenActive {
            HomeScreen()
        } else {
            JournalSlide(currentPage: $currentPage, isHomeScreenActive: $isHomeScreenActive)
        }
    }
}

struct JournalSlide: View {
    @Binding var currentPage: Int
    @Binding var isHomeScreenActive: Bool
    @Environment(\.dismiss) private var dismiss
    
    let journalTitles = [
        "Hi, tell me who’s someone that left you? Can you tell me about them?",
        "What was the last painful incident you had?",
        "What is a memorable thing you made with them?",
        "If you had the chance to speak before they left, what would you want to say?"
    ]
    
    @State private var journalTexts = Array(repeating: "", count: 4)
    
    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(0..<(journalTitles.count + 1), id: \.self) { index in
                    if index == journalTitles.count {
                        LastJournalView()
                            .tag(index)
                    } else {
                        WritingJournalView(title: journalTitles[index], text: $journalTexts[index])
                            .tag(index)
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .background(Color(red: 0.95, green: 0.95, blue: 0.97))
            
            Button(action: {
                if currentPage < 4 {
                    currentPage += 1
                } else {
                    dismiss()
                }
            }) {
                Text(currentPage == 4 ? "Done" : "Next")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(currentPage == 4 ? Color.black : Color.white)
                    .foregroundColor(currentPage == 4 ? .white : .black)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                    )
            }
            .padding()
            .background(Color(red: 0.95, green: 0.95, blue: 0.97))
            .navigationBarTitle("Telling", displayMode: .inline)
            .preferredColorScheme(.light)
        }
    }
}

struct WritingJournalView: View {
    let title: String
    @Binding var text: String
    
    var body: some View {
        VStack {
            Text("Please answer the question. It’s okay to be emotional, just let it all out here.")
                .font(Font.custom("SF Pro", size: 15))
                .multilineTextAlignment(.center)
                .padding(.vertical)
                .foregroundColor(Color(red: 0.52, green: 0.52, blue: 0.52))
            
            Text(title)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            TextEditor(text: $text)
                .padding()
                .frame(height: 400)
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding([.leading, .trailing], 16)
        }
        .padding()
        .background(Color(red: 0.95, green: 0.95, blue: 0.97))
    }
}

struct LastJournalView: View {
    var body: some View {
        VStack {
            Text("Thank you for sharing. I appreciate how you express your feelings.")
                .font(Font.custom("SF Pro", size: 24))
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
            
            Image("Last")
                .padding()
            
            Text("Whatever you feel, don’t keep it bottled up! Let your emotions flow to help yourself heal. Grief is a difficult journey, but let it flow until you can accept it. Keep going!")
                .font(Font.custom("SF Pro", size: 15))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.52, green: 0.52, blue: 0.52))
        }
        .padding()
        .background(Color(red: 0.95, green: 0.95, blue: 0.97))
    }
}
