//
//  Date+Ext.swift
//  GitFollowers
//
//  Created by Tiemi Matsumoto on 05/09/2024.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
