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
    let baseUrl: String = "https://api.thedogapi.com/v1/breeds/1"
    
    func getBreedData() async throws -> String? {
        guard let url = URL(string: "\(baseUrl)&api_key=\(apiKey)") else {fatalError("Invalid URL")}
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        if let httpResponse = response as? HTTPURLResponse {
            guard httpResponse.statusCode == 200 else {
                print("Status code:", httpResponse.statusCode)
                print(apiKey)
                print(url)
                print("Response:", String(data: data, encoding: .utf8) ?? "No body")
                fatalError("Error fetching weather")
            }
        }
        
        return String(data: data, encoding: .utf8)
    }
}
