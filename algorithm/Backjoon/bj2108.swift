//
//  bj2108.swift
//  algorithm
//
//  Created by Goodnews on 2018. 8. 18..
//  Copyright © 2018년 krgoodnews. All rights reserved.
//

//
//  main.swift
//  algorithm
//
//  Created by Goodnews on 2018. 8. 18..
//  Copyright © 2018년 krgoodnews. All rights reserved.
//

import Foundation

let line = Int(readLine()!)!

/*
7
1
3
8
3
-2
4
2
*/
var arr: [Int] = []

for _ in 0..<line {
	let value = Int(readLine()!)!
	arr.append(value)
}

// 산술평균
let totalArr = arr.reduce(0, +)
let count = arr.count
let average = Double(totalArr) / Double(count)
print(Int(average.rounded()))

// 중앙값
arr.sort()
let midValue = arr[(count-1)/2]
print(midValue)

// 최빈값
let set = Set(arr)
if set.count == arr.count {
	print(count > 1 ? arr[1] : arr[0] )
} else {
	var countArr = Array(repeating: 0, count: 8001)
	
	arr.forEach { (value) in
		countArr[value + 4000] += 1
	}
	
	let max = countArr.max()
	var maxArr = [Int]()
	
	for i in 0..<countArr.count {
		if countArr[i] == max {
			maxArr.append(i - 4000)
		}
	}
	
	print(maxArr.count > 1 ? maxArr[1] : maxArr[0] )
}



// 범위 (최대값 - 최소값)
guard let max = arr.last else { exit(0) }
guard let min = arr.first else { exit(0) }
let range = max - min
print(range)
