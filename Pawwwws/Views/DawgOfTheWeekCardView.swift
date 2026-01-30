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
        HStack(alignment: .center) {
            AsyncImage(url: URL(string: dawg.dog.breed.image?.url ?? "")) { image in
                image
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(15)
                
            } placeholder: {
                ProgressView()
            }
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 15) {
                Text(dawg.dog.name ?? "Unknown")
                    .font(.headline)
                    .foregroundColor(Color.white)
                
                Text(dawg.fact)
                    .font(.caption)
                    .frame(alignment: .leading)
                    .foregroundColor(Color.white)
            }
        }
        .padding(15)
        .background(Color.accent)
        .cornerRadius(15)
    }
}
