//
//  ViewController.swift
//  iTunesRequestsList
//
//  Created by 2020-1 on 10/16/19.
//  Copyright © 2019 ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var tracks: [Results] = []
    
    @IBOutlet weak var table: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel!.text = tracks[indexPath.row].trackName
        cell.imageView?.getImageFromUrl(from: tracks[indexPath.row].artworkUrl60)
        
        return cell
    }
    

    override func viewDidLoad() {
        getTracksNames()
        super.viewDidLoad()
        table.dataSource = self
    }

    
    func getTracksNames() {
        let url = URL(string: "http://itunes.apple.com/search?term=bowie");
        
        let task = URLSession.shared.dataTask(with: url!) {
            (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            //    if let data = data, let content = String(data: data, encoding: .utf8) {
            //        print(content)
            //    }
            
            if let data = data, let content = try?
                JSONDecoder().decode(Response.self, from: data) {
                for track in content.results {
                    print(track)
                    self.tracks.append(track)
                }
                DispatchQueue.main.async {
                    self.table.reloadData()
                }
            }
            
        }
        task.resume()
    }
}

