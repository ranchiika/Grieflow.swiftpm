import SwiftUI

struct WritingScreen: View {
    @State private var noteText: String = ""
    @State private var showToast: Bool = false
    @State private var isExpanded = false
    
    var body: some View {
        VStack {
            Text("Here, you free to write anything you wanna tell for someone you love. Make a letter for them. Its okay to be crying so hard. Jus’t tell the truth in front this page that you wanna tell.")
                .font(Font.custom("SF Pro", size: 15))
                .multilineTextAlignment(.center)
                .padding(.vertical,20)
                .foregroundColor(Color(red: 0.52, green: 0.52, blue: 0.52))
                .frame(alignment: .top)
            
            TextEditor(text: $noteText)
                .padding()
                .frame(height: 500)
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding([.leading, .trailing], 16)
            
            Button(action: {
                noteText = ""
                showToast = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    showToast = false
                }
            }) {
                Text("Send Letter")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(Color.white)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                    )
            }
            .padding()
            
            if showToast {
                Text("Letter is send 🕊️🤍")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.headline)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut, value: isExpanded)
            }
            
            Spacer()
        }
        .padding()
        .background(Color(red: 0.95, green: 0.95, blue: 0.97))
        .navigationBarTitle("Writting", displayMode: .inline)
        .preferredColorScheme(.light)
    }
}
