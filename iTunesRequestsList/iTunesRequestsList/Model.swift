//
//  Model.swift
//  iTunesRequestsList
//
//  Created by 2020-1 on 10/16/19.
//  Copyright © 2019 ios. All rights reserved.
//

import Foundation

// struct to be able to parse json
struct Response: Codable{
    var resultCount: Int
    var results: [Results]
}

struct Results: Codable {
    var trackName: String
    var artworkUrl60: String
}
