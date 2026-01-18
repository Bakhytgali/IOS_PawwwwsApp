//
//  DogsAPIManager.swift
//  Pawwwws
//
//  Created by Rakhat Bakhytgali on 11.01.2026.
//

import Foundation
import Combine

class DogsAPIManager {
    let apiKey: String = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String ?? "lol"
    let baseUrl: String = "https://api.thedogapi.com/v1"
    
    func getBreedData(breedId: Int = 1) async throws -> BreedModel? {
        guard let url = URL(string: "\(baseUrl)/breeds/\(breedId)") else {fatalError("Invalid URL")}
        
        var urlRequest = URLRequest(url: url)
        
        urlRequest.setValue(apiKey, forHTTPHeaderField: "x-api-key")
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        if let httpResponse = response as? HTTPURLResponse {
            guard httpResponse.statusCode == 200 else {
                print("Status code:", httpResponse.statusCode)
                print(apiKey)
                print(url)
                print("Response:", String(data: data, encoding: .utf8) ?? "No body")
                fatalError("Error fetching a dog breed!")
            }
        }
        
        let dogModel = try JSONDecoder().decode(BreedModel.self, from: data)
        print(dogModel)
        return dogModel
    }
    
//    func getNumberOfDogs(of number: Int) -> [BreedModel] {
//        guard let url = URL(string: "\(baseUrl)&api_key=\(apiKey)") else {fatalError("Invalid URL")}
//        
//        
//    }
}
