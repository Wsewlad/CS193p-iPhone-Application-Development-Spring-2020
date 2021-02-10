//
//  MemoryGame.swift
//  Memorise
//
//  Created by  Vladyslav Fil on 10.02.2021.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: [Card]
    
    mutating func choose(card: Card) {
        print("card choosed: \(card)")
        
        for (idx, card2) in cards.enumerated() {
            if card.id.value == card2.id.value {
                cards[idx].isFaceUp.toggle()
                print(card.id.value)
            }
        }
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = [Card]()
        
        for cardPairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(cardPairIndex)
            
            cards.append(Card(id: .init(value: cardPairIndex * 2), content: content))
            cards.append(Card(id: .init(value: cardPairIndex * 2 + 1), content: content))
        }
    }
    
    struct Card: Identifiable {
        struct Id: Hashable {
            var value: Int
        }
        
        var id: Id
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
