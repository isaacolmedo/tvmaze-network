//
//  File.swift
//  
//
//  Created by Isaac Olmedo on 19/08/21.
//

import Foundation
import Moya
import RxSwift

public protocol Provider {
    associatedtype T: TargetType
    var provider: MoyaProvider<T> { get }
    func request<D:Decodable>(_ target: T) -> Single<D>
}

extension Provider {
    public func request<D:Decodable>(_ target: T) -> Single<D> {
        return provider.rx.request(target).map(D.self)
    }
}
