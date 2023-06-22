//
//  Crypto.swift
//  CryptoAnalizer
//
//  Created by Ислам Пулатов on 6/21/23.
//


//import Foundation
//
//struct Crypto: Decodable {
//
//    let id: String
//    let symbol: String
//    let name: String
//    let currentPrice: Int
//
//
//
//}


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - WelcomeElement
struct Crypto: Codable {
    
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap: Int64
    let high24h:Double
//    let  marketCap, marketCapRank, fullyDilutedValuation: Int
//    let totalVolume, high24H, low24H: Int
//    let priceChange24H, priceChangePercentage24H: Double
//    let marketCapChange24H: Int
//    let marketCapChangePercentage24H: Double

    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case high24h = "high_24h"
//        case marketCap = "market_cap"
//        case marketCapRank = "market_cap_rank"
//        case fullyDilutedValuation = "fully_diluted_valuation"
//        case totalVolume = "total_volume"
//        case high24H = "high_24h"
//        case low24H = "low_24h"
//        case priceChange24H = "price_change_24h"
//        case priceChangePercentage24H = "price_change_percentage_24h"
//        case marketCapChange24H = "market_cap_change_24h"
//        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
    }
}

typealias Welcome = [Crypto]
