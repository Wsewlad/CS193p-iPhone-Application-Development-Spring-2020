//
//  EmojiMemoryGame.swift
//  Memorise
//
//  Created by  Vladyslav Fil on 10.02.2021.
//

import SwiftUI

class EmojiMemoryGame {
    private(set) var game: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃"]
        return .init(numberOfPairsOfCards: emojis.count) { cardPairIndex in emojis[cardPairIndex] }
    }
    
    //MARK: - Access to the model
    var cards: [MemoryGame<String>.Card] {
        game.cards
    }
    
    //MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        game.choose(card: card)
    }
}
