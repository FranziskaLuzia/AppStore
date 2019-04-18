//
//  TodayMultipleAppCell.swift
//  AppStore
//
//  Created by Franziska Kammerl on 4/18/19.
//  Copyright © 2019 Franziska Kammerl. All rights reserved.
//

import UIKit

class TodayMultipleAppCell: BaseTodayCell {
    
    let categoryLabel = UILabel(text: "LIFE HACK", font: .boldSystemFont(ofSize: 20))
    let titleLabel = UILabel(text: "Utilizing your Time", font: .boldSystemFont(ofSize: 26), numberOfLines: 2)
    let multipleAppsController = UIViewController()
    
    override var todayItem: TodayItem! {
        didSet {
            categoryLabel.text = todayItem.category
            titleLabel.text = todayItem.title
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        multipleAppsController.view.backgroundColor = .red
        backgroundColor = .white
        layer.cornerRadius = 16
        
        let stackView = VerticalStackView(arrangedSubviews: [
            categoryLabel,
            titleLabel,
            multipleAppsController.view
            ], spacing: 12)
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 24, left: 24, bottom: 24, right: 24))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }    
}
