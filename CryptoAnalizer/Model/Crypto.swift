//
//  Crypto.swift
//  CryptoAnalizer
//
//  Created by Ислам Пулатов on 6/21/23.
//

import Foundation

// MARK: - Crypto
struct Crypto: Codable {
    
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap: Int64
    let high24h:Double


    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case high24h = "high_24h"
    }
    
    
}

typealias Welcome = [Crypto]
