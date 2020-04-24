//
//  MockTest.swift
//  algorithm
//
//  Created by Yunsu Guk on 2020/04/25.
//  Copyright © 2020 krgoodnews. All rights reserved.
//

import Foundation

/// 프로그래머스 연습 > 완전탐색 > 모의고사
private func solution(_ answers:[Int]) -> [Int] {
    var patternA = Array(repeating: [1,2,3,4,5], count: 20000).flatMap { $0 }
    var patternB = Array(repeating: [2,1,2,3,2,4,2,5], count: 12500).flatMap { $0 }
    var patternC = Array(repeating: [3,3,1,1,2,2,4,4,5,5], count: 10000).flatMap { $0 }

    var answerCounts = [0, 0, 0]
    answers.forEach { answer in
        if patternA.removeFirst() == answer { answerCounts[0] += 1 }
        if patternB.removeFirst() == answer { answerCounts[1] += 1 }
        if patternC.removeFirst() == answer { answerCounts[2] += 1 }
    }

    let maxCount = answerCounts.max() ?? 0
    var result = [Int]()

    answerCounts.enumerated().forEach { i, count in
        if count == maxCount { result.append(i + 1) }
    }

    return result
}

//print(solution([1,2,3,4,5]))
