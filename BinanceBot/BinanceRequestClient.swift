//
//  BinanceRequestClient.swift
//  BinanceBot
//
//  Created by Saman Badakhshan on 23/12/2019.
//  Copyright © 2019 Saman Badakhshan. All rights reserved.
//

import Foundation
import Alamofire
import PromiseKit

struct BinanceRequestClientConfiguration
{
    private var host: String = "https://api.binance.com/api/v3"
    var pingEndpoint: String {
        return "\(host)/ping"
    }
    var timeEndpoint: String {
        return "\(host)/time"
    }
}

protocol BinanceRequestInterface
{
    func ping()
    func time()
}

class BinanceRequestClient: BinanceRequestInterface
{
    let config: BinanceRequestClientConfiguration
    
    init(config: BinanceRequestClientConfiguration)
    {
        self.config = config
    }
    
    func ping()
    {
        guard let url = URL(string: config.pingEndpoint) else {
            print("ping url invalid")
            return
        }
        print("\nrequest ping")
        AF.request(url, method: .get).responseJSON { response in
            switch response.result
            {
            case .success(let json):
                print("\nping response:\n\n\(json)")
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
    func time()
    {
        guard let url = URL(string: config.timeEndpoint) else {
            print("time url invalid")
            return
        }
        print("\nrequest time")
        AF.request(url, method: .get).responseJSON { response in
            switch response.result
            {
            case .success(let json):
                print("\ntime response:\n\n\(json)")
            case .failure(let failure):
                print(failure)
            }
        }
    }
}
