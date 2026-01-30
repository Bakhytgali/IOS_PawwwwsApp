//
//  DawgsOfTheWeekView.swift
//  Pawwwws
//
//  Created by Rakhat Bakhytgali on 22.01.2026.
//

import SwiftUI

struct DawgsOfTheWeekView: View {
    @EnvironmentObject var dogsViewModel: DogsViewModel
    
    var body: some View {
        ScrollView([.vertical, .horizontal]) {
            HStack {
                ForEach(dogsViewModel.dawgsOfTheWeek) { dawg in
                    DawgOfTheWeekCardView(dawg: dawg)
                }
            }
        }
        .frame(maxHeight: 200)
        .frame(maxWidth: .infinity, alignment: .top)
        .padding(10)
        .navigationTitle(Text("Dawgs of the Week"))
        
    }
}

#Preview {
    DawgsOfTheWeekView()
}
