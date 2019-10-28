
import UIKit
// To use "playgroundPage"
import PlaygroundSupport


// struct to be able to parse json
struct Response: Codable{
    var resultCount: Int
    var results: [Results]
}

struct Results: Codable {
    var trackName: String
}

let url = URL(string: "http://itunes.apple.com/search?term=bowie");

let jsonDecoder = JSONDecoder()

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
        }
    }
    
}

task.resume()

PlaygroundPage.current.needsIndefiniteExecution = true


