//
//  Double.swift
//  CrptoApp
//
//  Created by Ajay kumar on 13/09/25.
//

import Foundation

extension Double {
    
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.currencyCode = "USD"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    /// Formats a `Double` as a currency string with up to 6 decimal places.
      ///
      /// Example:
      /// ```swift
      /// let price: Double = 1234.56789
      /// print(price.currencyWithDecimal())
      /// // "$1,234.56789" (output depends on device locale)
      /// ```
    
    func currencyWith2Decimal() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    func asNumberString() -> String{
        return String(format: "%.2f", self)
    }
    
    func asPercentageString() -> String{
        return asNumberString() + "%"
    }
    
}
