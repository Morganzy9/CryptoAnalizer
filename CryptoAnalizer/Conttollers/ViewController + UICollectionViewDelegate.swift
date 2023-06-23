//
//  ViewController + UICollectionViewDelegate.swift
//  CryptoAnalizer
//
//  Created by Ислам Пулатов on 6/20/23.
//

import UIKit


extension ViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
//    MARK: - UICollectionViewDelegate:

    
    
    
    
//    MARK: - UICollectionViewDelegateFlowLayout:
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width / 2 - 20, height: 250)

    }
    
}
