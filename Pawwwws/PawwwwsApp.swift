//
//  PawwwwsApp.swift
//  Pawwwws
//
//  Created by Rakhat Bakhytgali on 11.01.2026.
//

import SwiftUI

@main
struct PawwwwsApp: App {
    @StateObject var dogsViewModel: DogsViewModel = DogsViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(dogsViewModel)
        }
    }
}
