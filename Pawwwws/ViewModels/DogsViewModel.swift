//
//  DogsViewModel.swift
//  Pawwwws
//
//  Created by Rakhat Bakhytgali on 11.01.2026.
//

import Foundation
import Combine

@MainActor
class DogsViewModel: ObservableObject {
    @Published var data: String? = nil
    @Published var isLoading: Bool = false
    
    private let apiManager = DogsAPIManager()
    
    func getABreed() async {
        isLoading = true
        do {
            data = try await apiManager.getBreedData()
            isLoading = false
        } catch {
            isLoading = false
            data = "Failed to fetch data"
        }
    }
}
