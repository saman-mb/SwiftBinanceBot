//
//  ConsoleIO.swift
//  BinanceBot
//
//  Created by Saman Badakhshan on 22/12/2019.
//  Copyright © 2019 Saman Badakhshan. All rights reserved.
//

import Foundation

class ConsoleClient
{
    enum Command: String
    {
        case test   // testig API calls
        case keys   // adding and removing API keys
        case wallet // lists wallet balances
        case trades // lists current trades
        case start  // start trading bot
        case stop   // stop trading bot
        case select // select a crypto asset to trade
        
        enum Keys: String
        {
            case set
            case list
            case purge
        }
    }
    
    let requestClient: BinanceRequestInterface
    let socketClient: BinanceSocketInterface
    
    init(requestClient: BinanceRequestInterface, socketClient: BinanceSocketInterface)
    {
        self.requestClient = requestClient
        self.socketClient = socketClient
    }
    
    func test()
    {
        requestClient.ping()
        requestClient.time()
    }
    
    func processInput()
    {
        var args = CommandLine.arguments
        args.remove(at: 0)
        
        guard args.count >= 1 else {
            print("Type a supported command")
            return
        }
        let arg = args.remove(at: 0)
        guard let command = Command(rawValue: arg) else {
            print("Invalid command!")
            return
        }
        print("Command detected: \(command.rawValue)")
        switch command
        {
        case .keys:
            handleKeys(args: args)
        case .wallet:
            break
        case .trades:
            break
        case .start:
            break
        case .stop:
            break
        case .select:
            break
        case .test:
            test()
        }
    }
    
    func listWallet()
    {
        // http account api call
        // print response
    }
    
    func listTrades()
    {
        // http trades api call
        // print response
    }
    
    func startBot()
    {
        // starts the bot if an asset has been selected
    }
    
    func stopBot()
    {
        // stops the bot
    }
    
    func select(asset: String)
    {
        // validae asset by checking it exists on binance
        // select it and print status or print error
    }
    
    func handleKeys(args: [String])
    {
        guard args.count >= 1, let command = Command.Keys(rawValue: args[0]) else {
            print("Please provide a valid keys sub command")
            return
        }
        print("Keys command detected: \(command.rawValue)")
        switch command
        {
        case .set:
            break
        case .list:
            break
        case .purge:
            break
        }

    }
}
