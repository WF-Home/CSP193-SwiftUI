//
//  ContentView.swift
//  Shared
//
//  Created by Wiljay Flores on 2021-03-16.
//

import SwiftUI

struct MemoryGameView: View {
    
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        Grid(items: viewModel.cards) { card in
                CardView(card: card)
                    .onTapGesture {
                        viewModel.choose(card: card)
                    }
            }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MemoryGameView(viewModel: EmojiMemoryGame())
    }
}

struct CardView: View {
    
    var card: MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
    }
    
    func body(for size: CGSize) -> some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(lineWidth: edgeLineWidth)
                    .foregroundColor(Color.orange)
                Text(card.content)
            } else {
                if !card.isMatched {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fill(Color.orange)
                }
            }
        }
        .font(Font.system(size: min(size.width, size.height) * fontScaleFactor ))
        .padding()
    }
    
    let cornerRadius : CGFloat = 10.0
    let edgeLineWidth : CGFloat = 3
    let fontScaleFactor : CGFloat = 0.75
}
