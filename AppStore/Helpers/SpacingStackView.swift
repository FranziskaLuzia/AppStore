//
//  SpacingStackView.swift
//  AppStore
//
//  Created by Franziska Kammerl on 2/28/19.
//  Copyright © 2019 Franziska Kammerl. All rights reserved.
//

import UIKit

class SpacingStackView: UIStackView {
    init(arrangedSubviews: [UIView], spacing: CGFloat, alignment: Alignment) {
        super.init(frame: .zero)
        arrangedSubviews.forEach({addArrangedSubview($0)})
        self.spacing = spacing
        self.alignment = alignment
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
