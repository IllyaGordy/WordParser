//
//  Helpers.swift
//  WordParser
//
//  Created by Illya Gordiyenko on 2018-04-25.
//  Copyright © 2018 Illya Gordiyenko. All rights reserved.
//

import Foundation

extension String {
    subscript(_ range: CountableRange<Int>) -> String {
        let idx1 = index(startIndex, offsetBy: range.lowerBound)
        let idx2 = index(startIndex, offsetBy: range.upperBound)
        return String(self[idx1..<idx2])
    }
    var count: Int { return characters.count }
}
