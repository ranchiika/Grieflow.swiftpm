import SwiftUI

struct WordAffirmationScreen: View {
    @State private var affirmationText: String = "Tap the button to get a warm word"
    
    let affirmations = [
        "Thank you for sticking around. Crying because you miss is not a problem. Cry hard and don't lose your way. You're cool! Even though he is not beside you, remember that he will still remain in your heart forever.💗",
        
        "If you're sad, pray. Be open to all your feelings. Regret will be there, sadness will be there. Remember that if you keep crying and being sad, don't you think he'll be sad and worried too?",
        
        "It’s okay to feel sad, lost, or even confused. Your feelings are valid, and you don’t have to hide or get rid of them right away. Give yourself time to process everything, because wounds don’t heal overnight. You are not alone, and you are still worthy, even when everything feels heavy.",
        
        "Losing someone or something precious is painful, and there is no ‘right’ way to grieve. Everyone has their own way of dealing with sadness, so don’t feel pressured to be ‘okay’ too soon. You have the right to feel sad, to cry, and even to be angry. What matters most is knowing that you are not alone on this journey.",
        
        "The pain you feel today is proof of how deeply you have loved. Nothing can truly replace that loss, but every small step forward is a sign of your strength. It’s okay to feel exhausted, to take a break, but never forget that there is still light within you. And slowly, you will find peace again.",
        
        "Grieving doesn’t mean forgetting. It’s a journey of learning how to love someone who is no longer here in a different way. The sense of loss may never completely disappear, but over time, it will become a part of your story that makes you stronger. It’s okay to hurt now, but believe that you will find a way to move forward.",
        
        "Some days will feel heavier than others, and that’s okay. Healing is not about erasing the pain, but about learning to carry it with love and grace. You don’t have to rush or have everything figured out right now. Just take it one day at a time. You are doing the best you can, and that is enough"
    ]
    
    var body: some View {
        VStack {
            Text("Here, you will find words that may help you calm your heart, even if just a little. Specially for you, the strong one! I hope these words give you the strength to keep moving forward in this long journey of life. Smile for yourself, and for the one who is now resting peacefully far away.")
                .font(Font.custom("SF Pro", size: 15))
                .multilineTextAlignment(.center)
                .padding(.vertical,20)
                .foregroundColor(Color(red: 0.52, green: 0.52, blue: 0.52))
                .frame(alignment: .top)
            
            Text(affirmationText)
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding()
                .frame(height: 400)
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding(.horizontal, 16)
            
            Button(action: {
                affirmationText = affirmations.randomElement() ?? "You are so amazing!"
            }) {
                Text("Get a Warm Word")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                    )
            }
            .padding()
            
            Spacer()
            
        }
        .padding()
        .background(Color(red: 0.95, green: 0.95, blue: 0.97))
        .navigationBarTitle("Warm word", displayMode: .inline)
        .preferredColorScheme(.light)
    }
}

