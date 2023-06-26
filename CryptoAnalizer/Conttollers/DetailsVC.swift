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
        
        guard let name = coinDetailed?.name else {
            
            print("Error in label name")
            
            return
        }
        
        guard let id = coinDetailed?.id else {
            
            print("Error in label id")
            
            return
        }
        
        guard let symbol = coinDetailed?.symbol else {
            
            print("Error in label symbol")
            
            return
        }
        
        cryptoDetailsView.symbolLabel.text = "Symbol of coin: \(name)"
        cryptoDetailsView.currPriceLabel.text = "Current Price: \(id)"
        cryptoDetailsView.high24Label.text = "High 24 hours: \(symbol)"
    }
    
    
}
