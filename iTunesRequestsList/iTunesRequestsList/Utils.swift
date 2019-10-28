//
//  Utils.swift
//  iTunesRequestsList
//
//  Created by 2020-1 on 10/16/19.
//  Copyright © 2019 ios. All rights reserved.
//

import UIKit




extension UIImageView {
    // With scaping, function is executed in background like Promises
    func getData(location: String, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        guard let url = URL(string: location) else {return };
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    func downloadImage(from url: URL){
        
        getData() {
            
        }
        guard let data = data, error == nil else {
            return
        }
        DispatchQueue.main.async {
            self.image = UIImage(data: data)
        }
    }
    
}
