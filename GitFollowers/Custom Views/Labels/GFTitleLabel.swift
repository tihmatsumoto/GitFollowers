//
//  GFTitleLabel.swift
//  GitFollowers
//
//  Created by Tiemi Matsumoto on 23/08/2024.
//

import UIKit

class GFTitleLabel: UILabel {

    //designated initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //convenience initializer, you can remove configure() in this one,
    //because it will do same thing in line 24 by calling override init designated initializer
    convenience init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
    }
    
    private func configure() {
        textColor = .label
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
}
