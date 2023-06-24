//
//  DetailsVC.swift
//  CryptoAnalizer
//
//  Created by Ислам Пулатов on 6/20/23.
//

import UIKit

class DetailsVC: UIViewController {
    
    //    MARK: - Variables
    var selectedCoin: Crypto!
    private var cryptoDetailsView: CryptoDetailsView!
    
   
    
    //    MARK: - UILifeCycle

    override func loadView() {
        super.loadView()

        cryptoDetailsView = CryptoDetailsView()
        cryptoDetailsView.symbolLabel.text = "Symbol of cion: \(selectedCoin.symbol)"
        cryptoDetailsView.currPriceLabel.text = "Current Price: \(String(selectedCoin.currentPrice))"
        cryptoDetailsView.high24Label.text = "High 24 hours: \(String(selectedCoin.high24h))"
        
        guard let currentPrice = cryptoDetailsView.currPriceLabel.text else { return }
        guard let high24 = cryptoDetailsView.high24Label.text else { return }
        
        cryptoDetailsView.currPriceLabel.changePartOfTextColor(fullText: currentPrice, changeText: String(selectedCoin.currentPrice))
        cryptoDetailsView.high24Label.changePartOfTextColor(fullText: high24, changeText: String(selectedCoin.high24h))
        
        view = cryptoDetailsView
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
        
    }
    

    //    MARK: - FUnction`s
    
    func setUpView() {
        
        view.backgroundColor = UIColor.white
        
    }
    

}
