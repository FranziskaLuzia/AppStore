//
//  ReviewRowCell.swift
//  AppStore
//
//  Created by Franziska Kammerl on 3/28/19.
//  Copyright © 2019 Franziska Kammerl. All rights reserved.
//

import UIKit

class ReviewRowCell: UICollectionViewCell {
    
    let reviewsController = ReviewsController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        addSubview(reviewsController.view)
        reviewsController.view.fillSuperview()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
