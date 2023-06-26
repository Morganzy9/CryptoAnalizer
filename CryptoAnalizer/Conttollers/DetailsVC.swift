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
        
        cryptoDetailsView.coingeckoRank.text = "Coingecko Rank: \(coingeckoRank)"
        cryptoDetailsView.coingeckoRank.changePartOfTextColor(fullText: "Coingecko Rank: \(coingeckoRank)", changeText: String(coingeckoRank))
        
        
    }
    
    
}
