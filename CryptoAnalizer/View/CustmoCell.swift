//
//  CustmoCell.swift
//  CryptoAnalizer
//
//  Created by Ислам Пулатов on 6/20/23.
//

import UIKit

class CustmoCell: UICollectionViewCell {
    
    let coinImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
            
        addSubview(coinImageView)
        
        coinImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            coinImageView.topAnchor.constraint(equalTo: topAnchor),
            coinImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            coinImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            coinImageView.bottomAnchor.constraint(equalTo: bottomAnchor)
        
        ])
        
        coinImageView.layer.cornerRadius = 20
        coinImageView.layer.masksToBounds = true
        
    }
    
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
