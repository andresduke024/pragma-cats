//
//  CatsRepositoryFactory.swift
//  pragma-cats
//
//  Created by Andres Duque on 6/12/22.
//

import Foundation

final class CatsRepositoryFactory {
    class func get(_ type: AppDataSourceType) -> CatsRepository {
        switch type {
            case .API: return CatsRepositoryImpl()
        }
    }
}
