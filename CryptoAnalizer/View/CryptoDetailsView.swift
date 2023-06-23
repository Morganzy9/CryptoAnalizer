//
//  CryptoDetailsView.swift
//  CryptoAnalizer
//
//  Created by Ислам Пулатов on 6/23/23.
//

import UIKit

class CryptoDetailsView: UIView {
    
    //    MARK: - Variables
    
    let symbolLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 16.0)
        
        return lbl
    }()
    
    let currPriceLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 16.0)
        
        return lbl
    }()
    
    let high24Label: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 16.0)
        
        return lbl
    }()
    
    
    
    
    //    MARK: - UILifeCycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    //    MARK: - FUnction`s
    
    func setUpView() {
        
        
        addSubview(symbolLabel)
        addSubview(currPriceLabel)
        addSubview(high24Label)
        
        
        NSLayoutConstraint.activate([
            
            symbolLabel.topAnchor.constraint(equalTo: topAnchor, constant: 200),
            symbolLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            symbolLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            symbolLabel.bottomAnchor.constraint(equalTo: currPriceLabel.topAnchor),
            symbolLabel.heightAnchor.constraint(equalToConstant: 60),
            
            currPriceLabel.topAnchor.constraint(equalTo: symbolLabel.bottomAnchor),
            currPriceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            currPriceLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            currPriceLabel.bottomAnchor.constraint(equalTo: high24Label.topAnchor),
            currPriceLabel.heightAnchor.constraint(equalToConstant: 60),
            
            high24Label.topAnchor.constraint(equalTo: currPriceLabel.bottomAnchor),
            high24Label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            high24Label.trailingAnchor.constraint(equalTo: trailingAnchor),
            high24Label.heightAnchor.constraint(equalToConstant: 60),
            
            
        ])
        
    }
    
}
