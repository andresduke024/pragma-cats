//
//  CatBreedsResponseMapper.swift
//  pragma-cats
//
//  Created by Andres Duque on 5/12/22.
//

import Foundation

class CatBreedsResponseMapper {
    public func map(_ data: [CatBreedResponse]) -> [Cat] {
        data.map { item in
            Cat(
                breedName: item.name,
                origin: item.origin,
                affectionLevel: item.affectionLevel,
                intelligence: item.intelligence,
                imageUrl: item.image?.url ?? ""
            )
        }
    }
}
