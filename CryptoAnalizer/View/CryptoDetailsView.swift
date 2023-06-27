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
    
    let coingeckoRankLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        
        return lbl
    }()
    
    let liquidityScoreLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        
        return lbl
    }()
    
    let publicInterestScoreLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        
        return lbl
    }()
    
    let developerScoreLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        
        return lbl
    }()
    
    let coingeckoScoreLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        
        return lbl
    }()
    
    let communityScoreLabel: UILabel = {
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
        addSubview(coingeckoRankLabel)
        addSubview(liquidityScoreLabel)
        addSubview(publicInterestScoreLabel)
        addSubview(developerScoreLabel)
        addSubview(coingeckoScoreLabel)
        addSubview(communityScoreLabel)
        
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
            marketCapRankLabel.bottomAnchor.constraint(equalTo: coingeckoRankLabel.topAnchor),
            
//            coingeckoRank label
            
            coingeckoRankLabel.topAnchor.constraint(equalTo: marketCapRankLabel.bottomAnchor),
            coingeckoRankLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorConstant),
            coingeckoRankLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            coingeckoRankLabel.bottomAnchor.constraint(equalTo: liquidityScoreLabel.topAnchor),
            coingeckoRankLabel.heightAnchor.constraint(equalToConstant: heightConstant),
            
//            liquidityScore
            
            liquidityScoreLabel.topAnchor.constraint(equalTo: coingeckoRankLabel.bottomAnchor),
            liquidityScoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorConstant),
            liquidityScoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            liquidityScoreLabel.bottomAnchor.constraint(equalTo: publicInterestScoreLabel.topAnchor),
            liquidityScoreLabel.heightAnchor.constraint(equalToConstant: heightConstant),
            
//            publicInterestScore
            
            publicInterestScoreLabel.topAnchor.constraint(equalTo: liquidityScoreLabel.bottomAnchor),
            publicInterestScoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorConstant),
            publicInterestScoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            publicInterestScoreLabel.bottomAnchor.constraint(equalTo: developerScoreLabel.topAnchor),
            publicInterestScoreLabel.heightAnchor.constraint(equalToConstant: heightConstant),
            
//            developerScore
            
            developerScoreLabel.topAnchor.constraint(equalTo: publicInterestScoreLabel.bottomAnchor),
            developerScoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorConstant),
            developerScoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            developerScoreLabel.bottomAnchor.constraint(equalTo: coingeckoScoreLabel.topAnchor),
            developerScoreLabel.heightAnchor.constraint(equalToConstant: heightConstant),
            
//          coingeckoScore
            
            coingeckoScoreLabel.topAnchor.constraint(equalTo: developerScoreLabel.bottomAnchor),
            coingeckoScoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorConstant),
            coingeckoScoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            coingeckoScoreLabel.bottomAnchor.constraint(equalTo: communityScoreLabel.topAnchor),
            coingeckoScoreLabel.heightAnchor.constraint(equalToConstant: heightConstant),
            
//            communityScore
            
            communityScoreLabel.topAnchor.constraint(equalTo: coingeckoScoreLabel.bottomAnchor),
            communityScoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorConstant),
            communityScoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            communityScoreLabel.heightAnchor.constraint(equalToConstant: heightConstant)
            
            
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
