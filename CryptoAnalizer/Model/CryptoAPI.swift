//
//  CryptoAPI.swift
//  CryptoAnalizer
//
//  Created by Ислам Пулатов on 6/21/23.
//

import UIKit

struct CryptoAPI {
    var cryptos = [Crypto]()
    
    func fetchCrypto(completion: @escaping ([Crypto]) -> Void) {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&locale=en") else {
            print("Error with URL")
            return
        }
        
        let dataTask = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Error fetching Crypto: \(String(describing: error))")
                return
            }
            
            guard let jsonData = data else {
                print("Error with jsonData, not provided")
                return
            }
            
            let jsonDecoder = JSONDecoder()
            
            do {
                let decodedData = try jsonDecoder.decode([Crypto].self, from: jsonData)
                DispatchQueue.main.async {
                    completion(decodedData)
                }
            } catch {
                print(String(describing: error))
            }
        }
        dataTask.resume()
    }
//    https://api.coingecko.com/api/v3/coins/bitcoin
    
    func fetchCryptoInDetails(selectedCoin: String, complition: @escaping (CryptoDetails?) -> Void) {
        
        let configuration = URLSessionConfiguration.default
        
        let session = URLSession(configuration: configuration)
        
        var urlConstructor = URLComponents()

        urlConstructor.scheme = "https"

        urlConstructor.host = "api.coingecko.com"

        urlConstructor.path = "/api/v3/coins/\(selectedCoin)"
        
        guard let url = urlConstructor.url else {

            print("Error in URL: fetchCryptoInDetails")

            return
        }
        
//        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/\(selectedCoin)") else { return }
        
        let task = session.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print("Error fetching Crypto: \(String(describing: error))")
                return
            }
            
            guard let jsonData = data else {
                
                print("Error in jsonData: fetchCryptoInDetails")
                
                return
            }
            
            let jsonDecoder = JSONDecoder()
            
            do {
                
                let decodedData = try jsonDecoder.decode(CryptoDetails.self, from: jsonData)
                
                DispatchQueue.main.async {
                    complition(decodedData)
                }
                
            } catch {
                
                print("Error in catch during  fetchCryptoInDetails \(String(describing: error))")
                
            }
            
            
        }
        task.resume()
    
    }
    
    func downloadImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            DispatchQueue.main.async {
                if let image = UIImage(data: data) {
                    completion(image)
                } else {
                    completion(nil)
                }
            }
        }.resume()
    }
        
}
