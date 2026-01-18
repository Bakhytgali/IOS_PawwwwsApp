//
//  DogModel.swift
//  Pawwwws
//
//  Created by Rakhat Bakhytgali on 18.01.2026.
//

import Foundation

struct DogModel {
    let name: String?
    let breed: BreedModel
}

struct DawgModel: Identifiable {
    let id: UUID = UUID()
    let fact: String
    let dog: DogModel
}
