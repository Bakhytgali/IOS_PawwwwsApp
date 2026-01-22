//
//  DawgOfTheWeekCardView.swift
//  Pawwwws
//
//  Created by Rakhat Bakhytgali on 23.01.2026.
//

import SwiftUI

struct DawgOfTheWeekCardView: View {
    var dawg: DawgModel
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: dawg.dog.breed.image?.url ?? "")) { image in
                image
                    .resizable()
                    .frame(width: 250, height: 250)
                    .cornerRadius(15)
                
            } placeholder: {
                ProgressView()
            }
            
            Text(dawg.dog.name ?? "Unknown")
                .font(.title)
            
            Text(dawg.fact)
                .font(.caption)
                .frame(alignment: .leading)
        }
        .padding(15)
        .background(Color.secondaryAccent)
        .cornerRadius(15)
    }
}
