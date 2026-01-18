//
//  HomeView.swift
//  Pawwwws
//
//  Created by Rakhat Bakhytgali on 11.01.2026.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var dogsViewModel: DogsViewModel

    var body: some View {
        VStack {
            if dogsViewModel.isLoading {
                ProgressView()
            } else if let data = dogsViewModel.data {
                Text(dogsViewModel.data?.name ?? "NOOOOTHING!")
            } else {
                Text("No data")
            }
        }
        .task {
            await dogsViewModel.getABreed()
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
    .environmentObject(DogsViewModel())
}
