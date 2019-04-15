//
//  Reviews.swift
//  AppStore
//
//  Created by Franziska Kammerl on 3/28/19.
//  Copyright © 2019 Franziska Kammerl. All rights reserved.
//

import UIKit

struct Reviews: Decodable {
    let feed: ReviewFeed
}

struct ReviewFeed: Decodable {
    let entry: [Entry]
}

struct Entry: Decodable {
    let title: Label
    let content: Label
    let author: Author
    
    let rating: Label
    
    private enum CodingKeys: String, CodingKey {
        case author, title, content
        case rating = "im:rating" 
    }
}

struct Author: Decodable {
    let name: Label
}

struct Label: Decodable {
    let label: String
}
