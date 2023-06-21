//
//  CustmoCell.swift
//  CryptoAnalizer
//
//  Created by Ислам Пулатов on 6/20/23.
//

import UIKit

class CustmoCell: UICollectionViewCell {
    
    let coinImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        // Set any additional properties for the image view
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(coinImageView)
        addSubview(nameLabel)
        addSubview(priceLabel)
        
        
        NSLayoutConstraint.activate([
            // Image View
            coinImageView.topAnchor.constraint(equalTo: topAnchor),
            coinImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            coinImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            coinImageView.heightAnchor.constraint(equalToConstant: 200),
            
            // Label
            nameLabel.topAnchor.constraint(equalTo: coinImageView.bottomAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
//            nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            nameLabel.heightAnchor.constraint(equalToConstant: 25),
            
            priceLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            priceLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            priceLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
            
            
        ])
        
        
        coinImageView.layer.cornerRadius = 10
        coinImageView.layer.masksToBounds = true
        
    }
    
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
