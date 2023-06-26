//
//  CryptoDetailsView.swift
//  CryptoAnalizer
//
//  Created by Ислам Пулатов on 6/23/23.
//

import UIKit

class CryptoDetailsView: UIView {
    
    //    MARK: - Variables
    
    let detailImage: UIImageView = {
        let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    let symbolLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        
        return lbl
    }()
    
    
    
    let             watchlistPortfolioUsersLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        
        return lbl
    }()
    
    let             marketCapRankLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        
        return lbl
    }()
    
    let coingeckoRank: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        
        return lbl
    }()
    
    let liquidityScore: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        
        return lbl
    }()
    
    let publicInterestScore: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        
        return lbl
    }()
    
    let developerScore: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        
        return lbl
    }()
    
    let coingeckoScore: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        
        return lbl
    }()
    
    let communityScore: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        
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
        addSubview(detailImage)
        addSubview(symbolLabel)
        addSubview(watchlistPortfolioUsersLabel)
        addSubview(marketCapRankLabel)
        addSubview(coingeckoRank)
        
//        MARK: - Constraints
        
        
        let leadingAnchorConstant: CGFloat = 15
        
        let heightConstant: CGFloat = 35
        
        NSLayoutConstraint.activate([
            
//            IMAGE
            
            detailImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            detailImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            detailImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            detailImage.heightAnchor.constraint(equalToConstant: 125),
            
//            SYMBOL label
            
            symbolLabel.topAnchor.constraint(equalTo: detailImage.bottomAnchor, constant: 20),
            symbolLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorConstant),
            symbolLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            symbolLabel.bottomAnchor.constraint(equalTo: watchlistPortfolioUsersLabel.topAnchor),
            symbolLabel.heightAnchor.constraint(equalToConstant: heightConstant),
            
//            watchlistPortfolioUsers label
            
            watchlistPortfolioUsersLabel.topAnchor.constraint(equalTo: symbolLabel.bottomAnchor),
            watchlistPortfolioUsersLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorConstant),
            watchlistPortfolioUsersLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            watchlistPortfolioUsersLabel.bottomAnchor.constraint(equalTo: marketCapRankLabel.topAnchor),
            watchlistPortfolioUsersLabel.heightAnchor.constraint(equalToConstant: heightConstant),
            
            
//            marketCapRank label
            
            marketCapRankLabel.topAnchor.constraint(equalTo: watchlistPortfolioUsersLabel.bottomAnchor),
            marketCapRankLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorConstant),
            marketCapRankLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            marketCapRankLabel.heightAnchor.constraint(equalToConstant: heightConstant),
            marketCapRankLabel.bottomAnchor.constraint(equalTo: coingeckoRank.topAnchor),
            
//            coingeckoRank label
            
            coingeckoRank.topAnchor.constraint(equalTo: marketCapRankLabel.bottomAnchor),
            coingeckoRank.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorConstant),
            coingeckoRank.trailingAnchor.constraint(equalTo: trailingAnchor),
            coingeckoRank.heightAnchor.constraint(equalToConstant: heightConstant),
            
            
        ])
    }
    
}

extension UILabel {
    
    func changePartOfTextColor(fullText: String, changeText: String) {
        
        let strNumber: NSString = fullText as NSString
        let range = (strNumber).range(of: changeText)
        let attribute = NSMutableAttributedString.init(string: fullText)
        attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.systemGreen , range: range)
        self.attributedText = attribute
        
    }
    
}
