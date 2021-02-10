//
//  MemoriseApp.swift
//  Memorise
//
//  Created by  Vladyslav Fil on 07.10.2020.
//

import SwiftUI

@main
struct MemoriseApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
