//
//  Cat.swift
//  pragma-cats
//
//  Created by Andres Duque on 5/12/22.
//

import Foundation

struct Cat: Identifiable {
    let breedName: String
    let origin: String
    let affectionLevel: Int
    let intelligence: Int
    let imageUrl: String
}

extension Cat {
    var id: UUID { UUID() }
}
