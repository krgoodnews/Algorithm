//
//  RansomNote.swift
//  algorithm
//
//  Created by Yunsu Guk on 2020/05/05.
//  Copyright © 2020 krgoodnews. All rights reserved.
//

import Foundation

private class Solution_RansomNote {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var ransomDic: [Character: Int] = [:]
        var magazineDic: [Character: Int] = [:]

        ransomNote.forEach {
            ransomDic[$0] = (ransomDic[$0] ?? 0) + 1
        }

        magazine.forEach {
            magazineDic[$0] = (magazineDic[$0] ?? 0) + 1
        }

        var output = true
        ransomDic.keys.forEach { key in
            if ransomDic[key] ?? 0 > magazineDic[key] ?? 0 {
                output = false
            }
        }

        return output
    }
}
//
//print(Solution().canConstruct("aa", "aab"))
//print(Solution().canConstruct("aa", "ab"))
