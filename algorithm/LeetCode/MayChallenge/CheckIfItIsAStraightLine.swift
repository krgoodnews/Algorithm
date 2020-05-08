//
//  CheckIfItIsAStraightLine.swift
//  algorithm
//
//  Created by Yunsu Guk on 2020/05/08.
//  Copyright © 2020 krgoodnews. All rights reserved.
//

import Foundation

private class Solution_CheckIfItIsAStraightLine {
     func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        let firstPoint = coordinates[0]
        let secondPoint = coordinates[1]
        let inc = incline(firstPoint: firstPoint, secondPoint: secondPoint)

        for i in 2..<coordinates.count - 1 {
            let inc2 = incline(firstPoint: firstPoint, secondPoint: coordinates[i])
            if inc2 != inc {
                return false
            }
        }

        return true
    }

    private func incline(firstPoint: [Int], secondPoint: [Int]) -> Float {
        return (Float(secondPoint[1]) - Float(firstPoint[1])) / (Float(secondPoint[0]) - Float(firstPoint[0]))
    }
}
