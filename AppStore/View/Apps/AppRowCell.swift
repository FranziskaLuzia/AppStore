//
//  AppRowCell.swift
//  AppStore
//
//  Created by Franziska Kammerl on 3/5/19.
//  Copyright © 2019 Franziska Kammerl. All rights reserved.
//

import UIKit

class AppRowCell: UICollectionViewCell {
    
    let imageView = UIImageView(cornerRadius: 8)
    
    var nameLabel = UILabel(text: "App Name", font: .systemFont(ofSize: 20))
    let companyName = UILabel(text: "Company Name", font: .systemFont(ofSize: 13))
    
    let getButton = UIButton(title: "GET")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.backgroundColor = .purple
        imageView.constrainWidth(constant: 64)
        imageView.constrainHeight(constant: 64)
        
        getButton.backgroundColor = UIColor(white: 0.95, alpha: 1)
        getButton.constrainWidth(constant: 80)
        getButton.constrainHeight(constant: 32)
        getButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        getButton.layer.cornerRadius = 32 / 2
        
        let stackView = UIStackView(arrangedSubviews: [imageView, VerticalStackView(arrangedSubviews: [nameLabel, companyName]), getButton])
        addSubview(stackView)
        stackView.spacing = 16
        stackView.alignment = .center
        stackView.fillSuperview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
