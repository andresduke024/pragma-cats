//
//  CatsViewModel.swift
//  pragma-cats
//
//  Created by Andres Duque on 6/12/22.
//

import Foundation

final class CatsViewModel: ViewModel, ObservableObject {
    private let repository: CatsRepository
    
    @Published var cats: [Cat] = [Cat]()
    
    init(_ repository: CatsRepository) {
        self.repository = repository
    }
    
    public func getCats() {
        isLoading = true
        repository.get { response in
            self.handleCatsDataResponse(response)
        }
    }
    
    private func handleCatsDataResponse(_ response: Response<[CatBreedResponse]>) {
        isLoading = false
        guard response.status == .success, let data = response.data else {
            showAlert(response.message)
            return
        }
        
        let mapper = CatBreedsResponseMapper()
        cats = mapper.map(data)
    }
}
