//
//  ConsoleIO.swift
//  BinanceBot
//
//  Created by Saman Badakhshan on 22/12/2019.
//  Copyright © 2019 Saman Badakhshan. All rights reserved.
//

import Foundation

class ConsoleFacade
{
    enum Command: String
    {
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
    
    static func parseArgs()
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
        }
    }
    
    static func listWallet()
    {
        // http account api call
        // print response
    }
    
    static func listTrades()
    {
        // http trades api call
        // print response
    }
    
    static func startBot()
    {
        // starts the bot if an asset has been selected
    }
    
    static func stopBot()
    {
        // stops the bot
    }
    
    static func select(asset: String)
    {
        // validae asset by checking it exists on binance
        // select it and print status or print error
    }
    
    static func handleKeys(args: [String])
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
