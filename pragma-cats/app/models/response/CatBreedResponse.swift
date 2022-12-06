//
//  CatBreedResponse.swift
//  pragma-cats
//
//  Created by Andres Duque on 5/12/22.
//

import Foundation

struct CatBreedResponse : Codable {
    var weight           : CatWeight?
    var id               : String
    var name             : String
    var cfaUrl           : String?
    var vetstreetUrl     : String?
    var vcahospitalsUrl  : String?
    var temperament      : String?
    var origin           : String
    var countryCodes     : String?
    var countryCode      : String?
    var description      : String?
    var lifeSpan         : String?
    var indoor           : Int?
    var lap              : Int?
    var altNames         : String?
    var adaptability     : Int?
    var affectionLevel   : Int
    var childFriendly    : Int?
    var dogFriendly      : Int?
    var energyLevel      : Int?
    var grooming         : Int?
    var healthIssues     : Int?
    var intelligence     : Int
    var sheddingLevel    : Int?
    var socialNeeds      : Int?
    var strangerFriendly : Int?
    var vocalisation     : Int?
    var experimental     : Int?
    var hairless         : Int?
    var natural          : Int?
    var rare             : Int?
    var rex              : Int?
    var suppressedTail   : Int?
    var shortLegs        : Int?
    var wikipediaUrl     : String?
    var hypoallergenic   : Int?
    var referenceImageId : String?
    var image            : CatImage?

    enum CodingKeys: String, CodingKey {
        
        case weight           = "weight"
        case id               = "id"
        case name             = "name"
        case cfaUrl           = "cfa_url"
        case vetstreetUrl     = "vetstreet_url"
        case vcahospitalsUrl  = "vcahospitals_url"
        case temperament      = "temperament"
        case origin           = "origin"
        case countryCodes     = "country_codes"
        case countryCode      = "country_code"
        case description      = "description"
        case lifeSpan         = "life_span"
        case indoor           = "indoor"
        case lap              = "lap"
        case altNames         = "alt_names"
        case adaptability     = "adaptability"
        case affectionLevel   = "affection_level"
        case childFriendly    = "child_friendly"
        case dogFriendly      = "dog_friendly"
        case energyLevel      = "energy_level"
        case grooming         = "grooming"
        case healthIssues     = "health_issues"
        case intelligence     = "intelligence"
        case sheddingLevel    = "shedding_level"
        case socialNeeds      = "social_needs"
        case strangerFriendly = "stranger_friendly"
        case vocalisation     = "vocalisation"
        case experimental     = "experimental"
        case hairless         = "hairless"
        case natural          = "natural"
        case rare             = "rare"
        case rex              = "rex"
        case suppressedTail   = "suppressed_tail"
        case shortLegs        = "short_legs"
        case wikipediaUrl     = "wikipedia_url"
        case hypoallergenic   = "hypoallergenic"
        case referenceImageId = "reference_image_id"
        case image            = "image"
    }
    
}

struct CatImage: Codable {
    let id: String
    let width, height: Int
    let url: String
}

struct CatWeight: Codable {
    let imperial, metric: String
}
