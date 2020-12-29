//
//  CoinModel.swift
//  ByteCoin
//
//  Created by QuyVX on 29/12/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    let last: Double
    var lastString: String {
        return last.formatnumber(groupingSeparator: ",")
    }

}

extension Double {
    func formatnumber(groupingSeparator: String?) -> String {
        let formater = NumberFormatter()
        formater.groupingSeparator = (groupingSeparator != nil) ? groupingSeparator! : ""
        formater.numberStyle = .decimal
        return formater.string(from: NSNumber(value: self))!
    }
}
