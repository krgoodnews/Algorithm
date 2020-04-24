//
//  Towers.swift
//  algorithm
//
//  Created by Yunsu Guk on 2020/04/24.
//  Copyright © 2020 krgoodnews. All rights reserved.
//

import Foundation

func receiveTower(leftTowers: [Int], height: Int) -> Int {
    for (i, towerHeight) in leftTowers.enumerated().reversed() {
        if height < towerHeight { return i + 1 }
    }
    return 0
}

private func solution(_ heights:[Int]) -> [Int] {
    var result: [Int] = []
    for i in 0..<heights.count {
        result.append(receiveTower(leftTowers: Array(heights[0..<i]), height: heights[i]))
    }
    return result
}
