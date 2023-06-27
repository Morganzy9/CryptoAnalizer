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
    
    let describtionView: UITextView = {
        var text = UITextView()
        
        text.translatesAutoresizingMaskIntoConstraints = false
        text.isEditable = false
        text.font = UIFont.boldSystemFont(ofSize: 15)
        text.textColor = UIColor.black
        text.backgroundColor = UIColor.white
        text.isScrollEnabled = true
        
        
        return text
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
        addSubview(describtionView)
        
//        MARK: - Constraints
        
        
        let leadingAnchorLabelConstant: CGFloat = 10
        
        let heightLabelConstant: CGFloat = 30
        
        NSLayoutConstraint.activate([
            
//            IMAGE
            
            detailImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            detailImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            detailImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            detailImage.heightAnchor.constraint(equalToConstant: 125),
            
//            SYMBOL label
            
            symbolLabel.topAnchor.constraint(equalTo: detailImage.bottomAnchor, constant: 20),
            symbolLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorLabelConstant),
            symbolLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            symbolLabel.bottomAnchor.constraint(equalTo: watchlistPortfolioUsersLabel.topAnchor),
            symbolLabel.heightAnchor.constraint(equalToConstant: heightLabelConstant),
            
//            watchlistPortfolioUsers label
            
            watchlistPortfolioUsersLabel.topAnchor.constraint(equalTo: symbolLabel.bottomAnchor),
            watchlistPortfolioUsersLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorLabelConstant),
            watchlistPortfolioUsersLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            watchlistPortfolioUsersLabel.bottomAnchor.constraint(equalTo: marketCapRankLabel.topAnchor),
            watchlistPortfolioUsersLabel.heightAnchor.constraint(equalToConstant: heightLabelConstant),
            
            
//            marketCapRank label
            
            marketCapRankLabel.topAnchor.constraint(equalTo: watchlistPortfolioUsersLabel.bottomAnchor),
            marketCapRankLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorLabelConstant),
            marketCapRankLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            marketCapRankLabel.heightAnchor.constraint(equalToConstant: heightLabelConstant),
            marketCapRankLabel.bottomAnchor.constraint(equalTo: coingeckoRankLabel.topAnchor),
            
//            coingeckoRank label
            
            coingeckoRankLabel.topAnchor.constraint(equalTo: marketCapRankLabel.bottomAnchor),
            coingeckoRankLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorLabelConstant),
            coingeckoRankLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            coingeckoRankLabel.bottomAnchor.constraint(equalTo: liquidityScoreLabel.topAnchor),
            coingeckoRankLabel.heightAnchor.constraint(equalToConstant: heightLabelConstant),
            
//            liquidityScore
            
            liquidityScoreLabel.topAnchor.constraint(equalTo: coingeckoRankLabel.bottomAnchor),
            liquidityScoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorLabelConstant),
            liquidityScoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            liquidityScoreLabel.bottomAnchor.constraint(equalTo: publicInterestScoreLabel.topAnchor),
            liquidityScoreLabel.heightAnchor.constraint(equalToConstant: heightLabelConstant),
            
//            publicInterestScore
            
            publicInterestScoreLabel.topAnchor.constraint(equalTo: liquidityScoreLabel.bottomAnchor),
            publicInterestScoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorLabelConstant),
            publicInterestScoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            publicInterestScoreLabel.bottomAnchor.constraint(equalTo: developerScoreLabel.topAnchor),
            publicInterestScoreLabel.heightAnchor.constraint(equalToConstant: heightLabelConstant),
            
//            developerScore
            
            developerScoreLabel.topAnchor.constraint(equalTo: publicInterestScoreLabel.bottomAnchor),
            developerScoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorLabelConstant),
            developerScoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            developerScoreLabel.bottomAnchor.constraint(equalTo: coingeckoScoreLabel.topAnchor),
            developerScoreLabel.heightAnchor.constraint(equalToConstant: heightLabelConstant),
            
//          coingeckoScore
            
            coingeckoScoreLabel.topAnchor.constraint(equalTo: developerScoreLabel.bottomAnchor),
            coingeckoScoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorLabelConstant),
            coingeckoScoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            coingeckoScoreLabel.bottomAnchor.constraint(equalTo: communityScoreLabel.topAnchor),
            coingeckoScoreLabel.heightAnchor.constraint(equalToConstant: heightLabelConstant),
            
//            communityScore
            
            communityScoreLabel.topAnchor.constraint(equalTo: coingeckoScoreLabel.bottomAnchor),
            communityScoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorLabelConstant),
            communityScoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            communityScoreLabel.bottomAnchor.constraint(equalTo: describtionView.topAnchor),
            communityScoreLabel.heightAnchor.constraint(equalToConstant: heightLabelConstant),
            
            
//            describtionView
            
            describtionView.topAnchor.constraint(equalTo: communityScoreLabel.bottomAnchor),
            describtionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            describtionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            describtionView.bottomAnchor.constraint(equalTo: bottomAnchor)
            
            
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
