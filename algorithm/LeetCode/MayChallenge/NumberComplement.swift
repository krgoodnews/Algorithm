//
//  NumberComplement.swift
//  algorithm
//
//  Created by Yunsu Guk on 2020/05/05.
//  Copyright © 2020 krgoodnews. All rights reserved.
//

import Foundation

private class Solution_NumberComplement {
    private func complementString(str: String) -> String {
        return str.replacingOccurrences(of: "1", with: "2")
            .replacingOccurrences(of: "0", with: "1")
            .replacingOccurrences(of: "2", with: "0")
    }

    func findComplement(_ num: Int) -> Int {
        let binaryString = String(num, radix: 2)
        let complement = complementString(str: binaryString)
        print(complement)
        return Int.init(complement, radix: 2) ?? 0
    }
}

