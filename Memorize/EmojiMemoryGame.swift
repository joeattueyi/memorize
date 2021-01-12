//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Joe Attueyi on 12/10/20.
//  Copyright © 2020 Joe Attueyi. All rights reserved.
//

import Foundation


class EmojiMemoryGame: ObservableObject{
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        var emojis = ["👻", "🎃", "🕷"]
        emojis.shuffle()
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    var cards: Array<MemoryGame<String>.Card> {
        model.cards 
    }
    
    func choose(card: MemoryGame<String>.Card){
        objectWillChange.send()
        model.choose(card: card)
    }
    
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
