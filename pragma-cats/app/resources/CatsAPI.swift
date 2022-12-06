//
//  Endpoints.swift
//  pragma-cats
//
//  Created by Andres Duque on 5/12/22.
//

import Foundation

struct CatsAPI {
    private static let base = "https://api.thecatapi.com/v1/"
    
    static let breedsEndpoint = "\(base)breeds"
    
    static let authKey = "bda53789-d59e-46cd-9bc4-2936630fde39"
}
