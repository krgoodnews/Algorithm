
func combi(_ n: Int, _ r: Int) -> Int {
	var p = 1
	for i in 1...r {
		p = p * (n - i + 1) / i
	}
	
	return p
}
/*

3
2 2
1 5
13 29
*/
let count = Int(readLine()!)!

for _ in 0..<count {
	let line = readLine()!.split(separator: " ").map({ Int($0)! })
	let n = line[0]
	let m = line[1]
	
	
	print(combi(m, n))
	
}
