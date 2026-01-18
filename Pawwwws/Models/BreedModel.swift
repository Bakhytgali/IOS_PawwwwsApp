//
//  BreedModel.swift
//  Pawwwws
//
//  Created by Rakhat Bakhytgali on 18.01.2026.
//

import Foundation

struct BreedModel: Codable {
    let id: String
    let name: String
    let speciesID: String?
    
    let lifeSpan: String
    let temperament: String?
    let origin: String?
    
    let description: String?
    let history: String?
    
    let bredFor: String?
    let perfectFor: String?
    let breedGroup: String?
    
    let countryCodes: String?
    let countryCode: String?
    
    let referenceImageID: String?
    
    let weight: BreedMetrics
    let height: BreedMetrics
    let image: BreedImage?

    enum CodingKeys: String, CodingKey {
        case id, name, temperament, origin, description, history, weight, height, image
        case speciesID = "species_id"
        case lifeSpan = "life_span"
        case bredFor = "bred_for"
        case perfectFor = "perfect_for"
        case breedGroup = "breed_group"
        case countryCodes = "country_codes"
        case countryCode = "country_code"
        case referenceImageID = "reference_image_id"
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
