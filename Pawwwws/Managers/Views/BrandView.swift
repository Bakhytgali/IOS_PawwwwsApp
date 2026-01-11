//
//  BrandView.swift
//  Pawwwws
//
//  Created by Rakhat Bakhytgali on 11.01.2026.
//

import SwiftUI

struct BrandView: View {
    var body: some View {
        VStack {
            Image(systemName: "pawprint.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.secondaryAccent)
                .padding(10)
                .frame(width: 100, height: 100)
                .background(Color.accentColor)
                .cornerRadius(10)
            
            Text("Pawwwws!")
                .bold()
                .font(.headline)
        }
    }
}

#Preview {
    BrandView()
}
