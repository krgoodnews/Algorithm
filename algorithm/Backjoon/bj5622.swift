//
//  bj5622.swift
//  algorithm
//
//  Created by Goodnews on 2018. 8. 18..
//  Copyright © 2018년 krgoodnews. All rights reserved.
//

import Foundation

let line = readLine()!

let lineArr = Array(line)

let dic: [Character: Int] = [
	"A": 2,
	"B": 2,
	"C": 2,
	"D": 3,
	"E": 3,
	"F": 3,
	"G": 4,
	"H": 4,
	"I": 4,
	"J": 5,
	"K": 5,
	"L": 5,
	"M": 6,
	"N": 6,
	"O": 6,
	"P": 7,
	"Q": 7,
	"R": 7,
	"S": 7,
	"T": 8,
	"U": 8,
	"V": 8,
	"W": 9,
	"X": 9,
	"Y": 9,
	"Z": 9
]

var result = 0
for ch in lineArr {
	//	guard let index = ch.unicodeScalars.first?.value else { continue }
	//
	//	print(index - 65)
	//
	//
	let second = dic[ch]
	result += (second! + 1)
}

print(result)



