//
//  Repository.swift
//  pragma-cats
//
//  Created by Andres Duque on 5/12/22.
//

import Foundation
import Alamofire

class Repository {
    
    public func mapResponse<T: Codable>(_ response: AFDataResponse<Data?>, responseModel: T.Type) -> Response<T> {
        switch response.result {
        case .success:
            guard let data = self.map(response.data, to: T.self) else {
                return Response(.decodingFail)
            }
            
            return Response(data)
        case .failure:
            return Response.createError(status: response.response?.statusCode)
        }
    }
    
    private func map<T>(_ data: Data?, to type: T.Type) -> T? where T : Decodable {
        guard let data = data else { return nil }
        return try? JSONDecoder().decode(type.self, from: data)
    }
}
