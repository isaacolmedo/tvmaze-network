//
//  ShowsProvider.swift
//  
//
//  Created by Isaac Olmedo on 19/08/21.
//

import Foundation
import Moya
import RxMoya
import RxSwift
import Alamofire
import SystemConfiguration

public class ShowsProvider: Provider {

    public let provider: MoyaProvider<ShowsService>
    fileprivate let reachability: SCNetworkReachability? = SCNetworkReachabilityCreateWithName(nil, "www.google.com")
    
    public init() {
        let provider = MoyaProvider<ShowsService>()
        self.provider = provider
    }
}
