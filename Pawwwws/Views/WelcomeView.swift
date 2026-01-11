//
//  WelcomeView.swift
//  Pawwwws
//
//  Created by Rakhat Bakhytgali on 11.01.2026.
//

import SwiftUI

struct WelcomeView: View {
    let imageURL: String = "https://static.vecteezy.com/system/resources/previews/051/713/863/non_2x/golden-retriever-on-transparent-background-free-png.png"
    
    var body: some View {
        VStack {
            BrandView()
            Spacer()
            
            AsyncImage(
                url: URL(string: imageURL)
            )  { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
            } placeholder: {
                ProgressView()
            }
            
            Text("Hello There!")
                .bold()
                .font(.title)
                .padding(.bottom, 10)
            
            Text("Welcome to the world of puppies! Get to know each of them using our app!")
                .font(.body)
                .foregroundColor(.secondary)
                .padding(.bottom, 20)
            
            NavigationLink {
                HomeView()
            } label: {
                Text("Let's Go! 🐶")
                .bold()
                .frame(width: 200)
                .foregroundColor(.white)
                .padding(15)
                .background(Color.accent)
                .cornerRadius(5)
            }
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
}

#Preview {
    WelcomeView()
}
