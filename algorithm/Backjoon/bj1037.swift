//
//  bj1037.swift
//  algorithm
//
//  Created by Goodnews on 2018. 8. 29..
//  Copyright © 2018년 krgoodnews. All rights reserved.
//

import Foundation



let _ = Int(readLine()!)! // count
var submultiples: [Int] = (readLine()?.split(separator: " ").map( { Int($0)! }))!

if submultiples.count == 0 {
	print("2")
	exit(1)
}
submultiples.sort()
let n = (submultiples.first ?? 1) * (submultiples.last ?? 1)

print(n)
