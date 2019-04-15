//
//  Service.swift
//  AppStore
//
//  Created by Franziska Kammerl on 3/2/19.
//  Copyright © 2019 Franziska Kammerl. All rights reserved.
//

import Foundation

class Service {
    static let shared = Service() // singleton
    
    // SEARCH TERMS
    
    func fetchApps(searchTerm: String, completion: @escaping (SearchResult?, Error?) -> ()) {
        let urlString = "https://itunes.apple.com/search?term=\(searchTerm)&entity=software"
        guard let url = URL(string: urlString) else { return }
        fetchGenericJSONData(urlString: urlString, completion: completion)
    }
    
    // TOP GROSSING
    
    func fetchTopGrossing(completion: @escaping (AppGroup?, Error?) -> ()) {
        let urlString = "https://rss.itunes.apple.com/api/v1/us/ios-apps/top-grossing/all/25/explicit.json"
        fetchAppGroup(urlString: urlString, completion: completion)
       
    }
    
    // NEW GAMES
    
    func fetchGames(completion: @escaping (AppGroup?, Error?) -> ()) {
        let urlString = "https://rss.itunes.apple.com/api/v1/us/ios-apps/new-games-we-love/all/25/explicit.json"
        fetchAppGroup(urlString: urlString, completion: completion)
    }
    
    // APP GROUP
    
    func fetchAppGroup(urlString: String, completion: @escaping (AppGroup?, Error?) -> Void) {
        fetchGenericJSONData(urlString: urlString, completion: completion)
    }
    
    // SOCIAL APPS
    
    func fetchSocialApps(completion: @escaping ([SocialApp]?, Error?) -> Void) {
        let urlString = "https://api.letsbuildthatapp.com/appstore/social"
        fetchGenericJSONData(urlString: urlString, completion: completion)
    }
    
    
    // GENERIC FUNCTION DECLARATION
    
    func fetchGenericJSONData<T: Decodable>(urlString: String, completion: @escaping (T?, Error?) -> ()) {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) {(data, resp, err) in
            if let err = err {
                completion(nil, err)
                return
            }
            do {
                // success
                let objects = try JSONDecoder().decode(T.self, from: data!)
                completion(objects, nil)
            } catch {
                completion(nil, error)
            }
            }.resume()
    }
}

// Stack
// Generics is to declare the Type later on

//class Stack<T: Decodable> {
//    var items = [T]()
//    func push(item: T) { items.append(item) }
//    func pop() -> T? { return items.last }
//}

//import UIKit
//
//
//func dummyFunc() {
////    let stackOfImages = Stack<UIImage>()
//
//    let stackOfStrings = Stack<String>()
//    stackOfStrings.push(item: "This has to be a string")
//
//    let stackOfInts = Stack<Int>()
//    stackOfInts.push(item: 1)
//}
