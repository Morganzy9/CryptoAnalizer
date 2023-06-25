//
//  CryptoDetails.swift
//  CryptoAnalizer
//
//  Created by Ислам Пулатов on 6/25/23.
//

import Foundation

// MARK: - CryptoDetails
struct CryptoDetails: Codable {
    let id, symbol, name: String
    let description: Description
    let image: Image
    let watchlistPortfolioUsers, marketCapRank, coingeckoRank: Int
    let coingeckoScore, developerScore, communityScore, liquidityScore: Double
    let publicInterestScore: Double

    enum CodingKeys: String, CodingKey {
        case id, symbol, name, description, image
        case watchlistPortfolioUsers = "watchlist_portfolio_users"
        case marketCapRank = "market_cap_rank"
        case coingeckoRank = "coingecko_rank"
        case coingeckoScore = "coingecko_score"
        case developerScore = "developer_score"
        case communityScore = "community_score"
        case liquidityScore = "liquidity_score"
        case publicInterestScore = "public_interest_score"
    }
}

// MARK: - Description
struct Description: Codable {
    let en: String
}

// MARK: - Image
struct Image: Codable {
    let thumb, small, large: String
}

