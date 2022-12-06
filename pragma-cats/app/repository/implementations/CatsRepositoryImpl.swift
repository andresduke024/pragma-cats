//
//  CatsRepositoryImpl.swift
//  pragma-cats
//
//  Created by Andres Duque on 5/12/22.
//

import Foundation
import Alamofire

class ClassRepositoryImpl: Repository, CatsRepository {
    private func getHeaders() -> HTTPHeaders {
        ["x-api-key" : CatsAPI.authKey]
    }
    
    func get(completion: @escaping (Response<[CatBreedResponse]>) -> ()) {
        AF.request(CatsAPI.breedsEndpoint, method: .get, headers: self.getHeaders()).response { response in
            completion(self.mapResponse(response, responseModel: [CatBreedResponse].self))
        }
    }
}
