//
//  BaseListController.swift
//  AppStore
//
//  Created by Franziska Kammerl on 3/5/19.
//  Copyright © 2019 Franziska Kammerl. All rights reserved.
//

import UIKit

class BaseListController: UICollectionViewController {
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
