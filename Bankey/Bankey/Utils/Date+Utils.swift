//
//  Date+Utils.swift
//  Bankey
//
//  Created by Agung Perda Gumelar on 23/11/22.
//

import Foundation

extension Date {
    static var bankeyDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(abbreviation: "MDT")
        return formatter
    }
    
    var monthDayYearString: String {
        let dateFormatter = Date.bankeyDateFormatter
        dateFormatter.dateFormat = "MMM, d, yyyy"
        
        return dateFormatter.string(from: self)
    }
}
