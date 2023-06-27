//
//  DetailsVC.swift
//  CryptoAnalizer
//
//  Created by Ислам Пулатов on 6/20/23.
//

import UIKit

class DetailsVC: UIViewController {
    
    //    MARK: - Variables
    
    private var cryptoDetailsView: CryptoDetailsView!
    
    var selectedCoin = ""
    
    var coinDetailed: CryptoDetails?
    
    //    MARK: - UILifeCycle
    
    override func loadView() {
        super.loadView()
        
        cryptoDetailsView = CryptoDetailsView()
        
        view = cryptoDetailsView
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
        
    }
    
    
    //    MARK: - FUnction`s
    
    func setUpView() {
        
        view.backgroundColor = UIColor.white
        
        let cryptoApi = CryptoAPI()
        
        cryptoApi.fetchCryptoInDetails(selectedCoin: selectedCoin) { [weak self] crypto in
            guard let self = self else { return }
            
            DispatchQueue.main.async {
                self.coinDetailed = crypto
                self.updateLabels()
            }
        }
        
        
    }
    
    func updateLabels() {
        
        guard let detailImage = coinDetailed?.image.large else {
            
            print("Error in imageView detailImage")
            
            return
        }
        
        guard let symbol = coinDetailed?.symbol else {
            
            print("Error in label name")
            
            return
        }
        
        guard let watchlistPortfolioUsers = coinDetailed?.watchlistPortfolioUsers else {
            
            print("Error in label id")
            
            return
        }
        
        guard let marketCapRank = coinDetailed?.marketCapRank else {
            
            print("Error in label symbol")
            
            return
        }
        
        guard let coingeckoRank = coinDetailed?.coingeckoRank else {
            
            print("Error in label coingeckoRank")
            
            return
        }
        
        guard let liquidityScore = coinDetailed?.liquidityScore else {
            
            print("Error in liquidityScore")
            
            return
        }
        
        guard let publicInterestScore = coinDetailed?.publicInterestScore else {
            
            print("Error in publicInterestScore")
            
            return
        }
        
        guard let developerScore = coinDetailed?.developerScore else {
            
            print("Error in developerScore")
            
            return
        }
        
        guard let coingeckoScore = coinDetailed?.coingeckoScore else {
            
            print("Error in coingeckoScore")
            
            return
        }
        
        guard let communityScore = coinDetailed?.communityScore else {
            
            print("Error in communityScore")
            
            return
        }
        
        guard let describtionText = coinDetailed?.description else {
        
            print("Error in describtionView")
            
            return
        }
        
        
        //        Image
        
        let crpytoApi = CryptoAPI()
        
        if let url = URL(string: detailImage) {
            
            crpytoApi.downloadImage(from: url) { [weak self] image in
                
                guard let self = self  else { return }
                
                if let image = image {
                    
                    DispatchQueue.main.async {
                        self.cryptoDetailsView.detailImage.image = image
                    }
                    
                }
                
            }
            
        }
        
        cryptoDetailsView.symbolLabel.text = "Symbol of coin: \(symbol)"
        cryptoDetailsView.symbolLabel.changePartOfTextColor(fullText: "Symbol of coin: \(symbol)", changeText: symbol)
        
        cryptoDetailsView.watchlistPortfolioUsersLabel.text = "Watch list Portfolio Users: \(watchlistPortfolioUsers)"
        cryptoDetailsView.watchlistPortfolioUsersLabel.changePartOfTextColor(fullText: "Watch list Portfolio Users: \(watchlistPortfolioUsers)", changeText: String(watchlistPortfolioUsers))
        
        cryptoDetailsView.marketCapRankLabel.text = "Market Cap Rank: \(marketCapRank)"
        cryptoDetailsView.marketCapRankLabel.changePartOfTextColor(fullText: "Market Cap Rank: \(marketCapRank)", changeText: String(marketCapRank))
        
        cryptoDetailsView.coingeckoRankLabel.text = "Coingecko Rank: \(coingeckoRank)"
        cryptoDetailsView.coingeckoRankLabel.changePartOfTextColor(fullText: "Coingecko Rank: \(coingeckoRank)", changeText: String(coingeckoRank))
        
        cryptoDetailsView.liquidityScoreLabel.text = "Liquidity Score: \(liquidityScore)"
        cryptoDetailsView.liquidityScoreLabel.changePartOfTextColor(fullText: "Liquidity Score: \(liquidityScore)", changeText: String(liquidityScore))
        
        cryptoDetailsView.publicInterestScoreLabel.text = "Public Interest Score: \(publicInterestScore)"
        cryptoDetailsView.publicInterestScoreLabel.changePartOfTextColor(fullText: "Public Interest Score: \(publicInterestScore)", changeText: String(publicInterestScore))
        
        cryptoDetailsView.developerScoreLabel.text = "Developer Score: \(developerScore)"
        cryptoDetailsView.developerScoreLabel.changePartOfTextColor(fullText: "Developer Score: \(developerScore)", changeText: String(developerScore))
        
        cryptoDetailsView.coingeckoScoreLabel.text = "Coingecko Score: \(coingeckoScore)"
        cryptoDetailsView.coingeckoScoreLabel.changePartOfTextColor(fullText: "Coingecko Score: \(coingeckoScore)", changeText: String(coingeckoScore))
        
        cryptoDetailsView.communityScoreLabel.text = "Community Score: \(communityScore)"
        cryptoDetailsView.communityScoreLabel.changePartOfTextColor(fullText: "Community Score: \(communityScore)", changeText: String(communityScore))
        
        cryptoDetailsView.describtionView.text = describtionText.en
        
        
    }
    
    
}
