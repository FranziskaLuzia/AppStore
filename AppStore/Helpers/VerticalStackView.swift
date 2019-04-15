//
//  VerticalStackView.swift
//  AppStore
//
//  Created by Franziska Kammerl on 2/27/19.
//  Copyright © 2019 Franziska Kammerl. All rights reserved.
//

import UIKit

class VerticalStackView: UIStackView {

    init(arrangedSubviews: [UIView], spacing: CGFloat = 0) {
        super.init(frame: .zero)
        
        arrangedSubviews.forEach({addArrangedSubview($0)})
        
        self.spacing = spacing
        self.axis = .vertical
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



