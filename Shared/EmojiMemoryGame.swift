//
//  EmojiMemoryGame.swift
//  card-matching-game
//
//  Created by Wiljay Flores on 2021-03-16.
//

import SwiftUI

class EmojiMemoryGame : ObservableObject {
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame(cardContent: Theme().cardContents.randomElement()!)
    
    static func createMemoryGame(cardContent: [String]) -> MemoryGame<String> {
        let emojis: Array<String> = cardContent
        return MemoryGame<String>(numberOfPairs: 4) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}
