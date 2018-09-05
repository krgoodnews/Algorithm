import Foundation
/*
black	0	1
brown	1	10
red	2	100
orange	3	1000
yellow	4	10000
green	5	100000
blue	6	1000000
violet	7	10000000
grey	8	100000000
white	9	1000000000
*/

enum colors: String {
	case black, brown, red, orange, yellow, green, blue, violet, grey, white
}

let c1 = readLine()!
let c2 = readLine()!
let c3 = readLine()!

let ten = (colors.init(rawValue: c1)?.hashValue)! // 앞자리
let one = (colors.init(rawValue: c2)?.hashValue)! // 두번째자리
let zeros = (colors.init(rawValue: c3)?.hashValue)! // 0의 개수

var result = ten * 10 + one

for _ in 0..<zeros {
	result = result * 10
}
print(result)
