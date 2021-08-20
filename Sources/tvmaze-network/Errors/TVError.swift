//
//  File.swift
//  
//
//  Created by Isaac Olmedo on 19/08/21.
//

import Foundation

public typealias JSON = [String: Any]
typealias DecodableJSON<T: Decodable> = [String:T]

public enum TVError: Error {
    case notFound
    case undefined(statusCode: Int? = nil)
    case noConnection
    case unauthorized
    case emptyResponse
    case malformedJson
    case formError(messages: [String])
    case responseError(message: String?)
    case mismatchEncoding(swiftError: Error, responseJSON: JSON?)
    case encoding(swiftError: Error?, encodable: Encodable?)
}
