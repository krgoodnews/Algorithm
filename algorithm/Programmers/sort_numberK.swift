//
//  sort_numberK.swift
//  algorithm
//
//  Created by 국윤수 on 13/07/2019.
//  Copyright © 2019 krgoodnews. All rights reserved.
//

import Foundation

// https://www.welcomekakao.com/learn/courses/30/lessons/42748?language=swift
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
  func findNumber(_ array: [Int], _ command: [Int]) -> Int {
    let startNum = command[0] - 1
    let endNum = command[1]
    let slice = array[startNum..<endNum]
    let sortedArray = Array(slice).sorted()
    return sortedArray[command[2] - 1]
  }

  var result: [Int] = []
  commands.forEach {
    result.append(findNumber(array, $0))
  }
  return result
}

//let answer = solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])
//print("solution:", answer)



