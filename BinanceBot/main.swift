//
//  main.swift
//  BinanceBot
//
//  Created by Saman Badakhshan on 22/12/2019.
//  Copyright © 2019 Saman Badakhshan. All rights reserved.
//

import Foundation

let requestCient = BinanceRequestClient(config: BinanceRequestClientConfiguration())
let socketClient = BinanceSocketClient()
let console = ConsoleClient(requestClient: requestCient, socketClient: socketClient)
console.processInput()

RunLoop.current.run(until: Date(timeIntervalSinceNow: 10000000))
