//
//  UiView+Ext.swift
//  GitFollowers
//
//  Created by Tiemi Matsumoto on 09/09/2024.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) /*variadic parameter*/ {
        for view in views {
            addSubview(view)
        }
    }
}
