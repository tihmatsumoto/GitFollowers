//
//  UITableView+Ext.swift
//  GitFollowers
//
//  Created by Tiemi Matsumoto on 09/09/2024.
//

import UIKit

extension UITableView {
    
    //extra
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
