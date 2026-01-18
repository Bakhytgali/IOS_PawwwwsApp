//
//  BreedModel.swift
//  Pawwwws
//
//  Created by Rakhat Bakhytgali on 18.01.2026.
//

import Foundation

struct BreedModel: Codable {
    let weight, height: BreedMetrics
    let id: String
    let name: String
    let bredFor: String?
    let breedGroup: String?
    let lifeSpan: String?
    let temperament: String?
    let origin: String?
    let referenceImageID: String?
    let image: BreedImage?
    
    enum CodingKeys: String, CodingKey {
        case weight, height, id, name
        case bredFor = "bred_for"
        case breedGroup = "breed_group"
        case lifeSpan = "life_span"
        case temperament, origin
        case referenceImageID = "reference_image_id"
        case image
    }
}

struct BreedMetrics: Codable {
    let imperial, metric: String
}

struct BreedImage: Codable {
    let id: String
    let width, height: Int
    let url: String
}
