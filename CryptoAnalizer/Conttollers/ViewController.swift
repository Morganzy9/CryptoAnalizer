//
//  ViewController.swift
//  CryptoAnalizer
//
//  Created by Ислам Пулатов on 6/20/23.
//

import UIKit

class ViewController: UIViewController {
    
    var cryptoArr: [Crypto] = []
    
    var collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
        
        
    }
    
    
    
    func setUpView() {
        
        view.backgroundColor = UIColor.white
        title = "Cryptos"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        setUpCollectionView()
        
        let crypto = CryptoAPI()
        
        crypto.fetchCrypto { crypto in
            
            self.cryptoArr = crypto
            
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
            
            
        }
        
    }
    
    func setUpCollectionView() {
        
        view.addSubview(collectionView)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(CustmoCell.self, forCellWithReuseIdentifier: "cell")
        
    }
    
    
    
    
}




