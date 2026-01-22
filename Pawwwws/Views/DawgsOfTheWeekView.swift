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
            .defaultScrollAnchor(.leading)
            .frame(maxHeight: 400)
        }
        .navigationTitle(Text("Dawgs of the Week"))
        
    }
}

#Preview {
    DawgsOfTheWeekView()
}
