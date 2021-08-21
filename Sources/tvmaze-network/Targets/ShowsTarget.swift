//
//  File.swift
//  
//
//  Created by Isaac Olmedo on 19/08/21.
//

import Moya
import Foundation

// MARK: - TargetType Protocol Implementation
extension ShowsService: TargetType {
    public var baseURL: URL { return URL(string: "https://api.tvmaze.com/")! }
    public var path: String {
        switch self {
        case .shows:
            return "shows"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .shows:
            return .get
        }
    }
    public var task: Task {
        switch self {
        case .shows:
            return .requestPlain
        }
    }
    public var sampleData: Data {
        switch self {
        case .shows:
            return "".utf8Encoded
        }
    }
    
    public var headers: [String: String]? {
        return ["Content-type": "application/json"]
    }
}
// MARK: - Helpers
private extension String {
    var urlEscaped: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }

    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
}
