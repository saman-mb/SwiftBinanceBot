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
    var pingEndpoint: String
}

protocol BinanceRequestInterface
{
    func ping()
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
        
    }
}
