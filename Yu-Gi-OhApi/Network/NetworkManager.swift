//
//  NetworkManager.swift
//  Yu-Gi-OhApi
//
//  Created by Admin on 20/06/2022.
//

import Foundation
import UIKit

class NetworkManager {
    
    func getHeroes(completionHandler:@escaping ([CardData])-> Void) {
        let session = URLSession.shared
        let urlString = "https://db.ygoprodeck.com/api/v7/cardinfo.php"
        guard let url = URL(string: urlString) else {return}
        
        let dataTask = session.dataTask(with: url) {data, response, error in
            guard let data = data else {
                return
            }
            let decoded = JSONDecoder()
            do {
                let decodedResponse = try decoded.decode([CardData].self, from: data)
                 completionHandler(decodedResponse)
            }
            catch {
                print(error)
            }
        }
        dataTask.resume()
    }
}
