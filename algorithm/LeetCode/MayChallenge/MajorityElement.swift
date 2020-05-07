//
//  MajorityElement.swift
//  algorithm
//
//  Created by Yunsu on 2020/05/07.
//  Copyright © 2020 krgoodnews. All rights reserved.
//

import Foundation

private class Solution_MajorityElement {
    func majorityElement(_ nums: [Int]) -> Int {
        var dic = [Int: Int]()

        nums.forEach {
            dic[$0] = (dic[$0] ?? 0) + 1
        }

        return dic.keys.filter { (key) -> Bool in
            dic[key] == dic.values.max()
        }.first ?? 0
    }
}
