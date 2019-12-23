//
//  BinanceBotTests.swift
//  BinanceBotTests
//
//  Created by Saman Badakhshan on 23/12/2019.
//  Copyright © 2019 Saman Badakhshan. All rights reserved.
//

import XCTest
@testable import BinanceBot

class BinanceSocketClientTests: XCTestCase {

    var socketClient: BinanceSocketClient!
    
    override func setUp()
    {
        socketClient = BinanceSocketClient()
    }

    override func tearDown()
    {
        socketClient = nil
    }
}
