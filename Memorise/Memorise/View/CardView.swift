//
//  CardView.swift
//  Memorise
//
//  Created by  Vladyslav Fil on 11.02.2021.
//

import SwiftUI

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10).fill()
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: .init(id: .init(value: 1), content: "😀"))
            .padding()
            .foregroundColor(.orange)
            .font(.largeTitle)
    }
}
