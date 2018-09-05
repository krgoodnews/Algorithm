//
//  main.swift
//  algorithm
//
//  Created by Goodnews on 2018. 8. 18..
//  Copyright © 2018년 krgoodnews. All rights reserved.
//


import Foundation
let lineA = readLine()!
let arrA = lineA.components(separatedBy: " ").map { Int($0)! }

let lineB = readLine()!
let arrB = lineB.components(separatedBy: " ").map { Int($0)! }


//print(arrA, arrB)

var winA = 0
var winB = 0
var draw = 0

for i in 0..<10 {
	if arrA[i] > arrB[i] {
		winA += 1
	} else if arrA[i] == arrB[i] {
		draw += 1
	} else {
		winB += 1
	}
}

if winA == winB {
	print("D")
} else if winA > winB {
	print("A")
} else {
	print("B")
}

