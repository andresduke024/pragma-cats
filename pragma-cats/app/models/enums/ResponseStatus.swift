//
//  ResponseStatus.swift
//  pragma-cats
//
//  Created by Andres Duque on 5/12/22.
//

import Foundation

public enum ResponseStatus {
    case success
    case fail
    case decodingFail
    case code500
    case code400
    
    var message: String {
        switch self {
            case .code400:
                return Strings.code400
            case .code500:
                return Strings.code500
            case .decodingFail:
                return Strings.decodingError
            case .fail:
                return Strings.fail
            case .success:
                return Strings.success
        }
    }
}
