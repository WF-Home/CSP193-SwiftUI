//
//  card_matching_gameApp.swift
//  Shared
//
//  Created by Wiljay Flores on 2021-03-16.
//

import SwiftUI

@main
struct card_matching_gameApp: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            MemoryGameView(viewModel: game)
        }
    }
}
