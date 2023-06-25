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
//        cryptoDetailsView.symbolLabel.text = "Symbol of cion: \(coinDetailed?.name)"
//        cryptoDetailsView.currPriceLabel.text = "Current Price: \(String(selectedCoin.currentPrice))"
//        cryptoDetailsView.high24Label.text = "High 24 hours: \(String(selectedCoin.high24h))"
        
        guard let currentPrice = cryptoDetailsView.currPriceLabel.text else { return }
        guard let high24 = cryptoDetailsView.high24Label.text else { return }
        
//        cryptoDetailsView.currPriceLabel.changePartOfTextColor(fullText: currentPrice, changeText: String(selectedCoin.currentPrice))
//        cryptoDetailsView.high24Label.changePartOfTextColor(fullText: high24, changeText: String(selectedCoin.high24h))
        
        view = cryptoDetailsView
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
        
        print(coinDetailed?.name)
        
    }
    

    //    MARK: - FUnction`s
    
    func setUpView() {
        
        view.backgroundColor = UIColor.white
        
        let cryptoApi = CryptoAPI()
        
        cryptoApi.fetchCryptoInDetails(selectedCoin: selectedCoin) { [weak self] crypto in
            
            
            print(self?.coinDetailed?.name)
            print(crypto?.name)
            
            DispatchQueue.main.async {
                self?.coinDetailed = crypto
                self?.loadView()
            }
            
        }

        
    }
    

}
