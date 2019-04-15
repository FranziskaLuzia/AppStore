//
//  AppGroup.swift
//  AppStore
//
//  Created by Franziska Kammerl on 3/6/19.
//  Copyright © 2019 Franziska Kammerl. All rights reserved.
//

import Foundation

struct AppGroup: Decodable {
    let feed: Feed
}

struct Feed: Decodable {
    let title: String
    let results: [FeedResult]
}

struct FeedResult: Decodable {
    var id, name, artistName, artworkUrl100: String
}
