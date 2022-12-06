//
//  CatsRepository.swift
//  pragma-cats
//
//  Created by Andres Duque on 5/12/22.
//

import Foundation

protocol CatsRepository {
    func get(completion: @escaping (_ response: Response<[CatBreedResponse]>) -> ())
}
