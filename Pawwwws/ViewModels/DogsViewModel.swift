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
    @Published var data: BreedModel? = nil
    @Published var isLoading: Bool = false
//    @Published var dawgsOfTheWeek =
    
    private let apiManager = DogsAPIManager()
    
    func getABreed() async {
        isLoading = true
        do {
            data = try await apiManager.getBreedData()
            isLoading = false
        } catch {
            isLoading = false
            print(error)
        }
    }
    
//    func getTheDawgsOfTheWeek() async {
//        isLoading = true
//        do {
//        
//        } catch {
//            isLoading = false
//        }
//    }
}
