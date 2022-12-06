//
//  Response.swift
//  pragma-cats
//
//  Created by Andres Duque on 5/12/22.
//

import Foundation

struct Response<T: Codable> {
    var status: ResponseStatus
    var message: String
    var data: T?
    
    init(_ status: ResponseStatus){
        self.status = status
        self.message = status.message
    }
    
    init(_ data: T){
        self.status = .success
        self.message = status.message
        self.data = data
    }
    
    public static func createError(status responseStatusCode: Int?) -> Response {
        guard let status = responseStatusCode else { return .init(.fail) }
        
        switch status {
            case 400...499: return .init(.code400)
            case 500...599: return .init(.code500)
            default: return .init(.fail)
        }
    }
}

