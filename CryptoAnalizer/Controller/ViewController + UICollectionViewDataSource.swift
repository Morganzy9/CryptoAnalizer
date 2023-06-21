//
//  ViewController + UICollectionViewDataSource.swift
//  CryptoAnalizer
//
//  Created by Ислам Пулатов on 6/20/23.
//

import UIKit

extension ViewController: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArr.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustmoCell
        
        cell.coinImageView.image = UIImage(named: imageArr[indexPath.row])
        cell.nameLabel.text = "Name: \(imageArr[indexPath.row])"
        cell.priceLabel.text = "Price: "
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let destinationVC = DetailsVC()
        destinationVC.title = imageArr[indexPath.row]
        navigationController?.pushViewController(destinationVC, animated: true)
        
    }
}
