//
//  Decimal+Utils.swift
//  Bankey
//
//  Created by Agung Perda Gumelar on 21/11/22.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
