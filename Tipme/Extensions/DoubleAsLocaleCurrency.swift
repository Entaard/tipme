//
//  DoubleAsLocaleCurrency.swift
//  Tipme
//
//  Created by Enta'ard on 9/26/16.
//  Copyright © 2016 Enta'ard. All rights reserved.
//

import Foundation

extension Double {
    var asLocaleCurrency:String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        return formatter.string(from: (self as NSNumber))!
    }
}
