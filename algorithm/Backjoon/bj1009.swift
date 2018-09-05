import Foundation

/*
5
1 6
3 7
6 2
7 100
9 635
*/
let count = Int(readLine()!)!

for _ in 0..<count {
	let line = readLine()!.split(separator: " ").map( { Int($0)! })
	let a = line[0]
	let b = line[1]
	
	var result = a
	for _ in 0..<b-1 {
		result = (result * a) % 10
	}
	
	print((result==0) ? 10 : result)
}
