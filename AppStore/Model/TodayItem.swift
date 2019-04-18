//
//  TodayItem.swift
//  AppStore
//
//  Created by Franziska Kammerl on 4/17/19.
//  Copyright © 2019 Franziska Kammerl. All rights reserved.
//

import UIKit

struct TodayItem {
    let category: String
    let title: String
    let image: UIImage
    let description: String
    let backgroundColor: UIColor
    
    // enum section
    let cellType: CellType
    
    enum CellType: String {
        case single, multiple
    }
}
