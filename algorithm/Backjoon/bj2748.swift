//
//  bj2748.swift
//  algorithm
//
//  Created by Goodnews on 2018. 8. 18..
//  Copyright © 2018년 krgoodnews. All rights reserved.
//

import Foundation

let line = Int(readLine()!)!


var f0 = 0
var f1 = 1
var f2 = f0 + f1

if line < 2 {
	print("1")
	exit(0)
}
for _ in 2..<line {
	f0 = f1
	f1 = f2
	f2 = f0 + f1
}

print(f2)
