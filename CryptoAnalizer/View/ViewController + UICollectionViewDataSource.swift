//
//  ViewController + UICollectionViewDataSource.swift
//  CryptoAnalizer
//
//  Created by Ислам Пулатов on 6/20/23.
//

import UIKit

extension ViewController: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cryptoArr.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustmoCell
        
        
        let cryptoApi = CryptoAPI()
        
        if let url = URL(string: String(cryptoArr[indexPath.row].image)) {
            cryptoApi.downloadImage(from: url) { image in
                
                if let image = image {
                    
                    cell.coinImageView.image = image
                    
                }
                
            }
        }
        
        cell.nameLabel.text = "Name: \(String(describing: cryptoArr[indexPath.row].name))"
        
        cell.priceLabel.text = "Price: \(cryptoArr[indexPath.row].currentPrice)"
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let destinationVC = DetailsVC()
        destinationVC.title = cryptoArr[indexPath.row].name
        navigationController?.pushViewController(destinationVC, animated: true)
        
        
        
    }
    
    
    
}
