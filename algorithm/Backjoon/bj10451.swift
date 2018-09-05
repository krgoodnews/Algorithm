

/*
2
8
3 2 7 8 1 4 5 6
10
2 1 3 4 5 6 7 9 10 8
*/



let testCase = Int(readLine()!)!

for _ in 0..<testCase {
	
	let n = Int(readLine()!)!
	var a: [Int] = readLine()!.split(separator: " ").map({ Int($0)! })
	a.insert(0, at: 0)
	var check: [Bool] = Array(repeating: false, count: n+1)
	
	
	func dfs(_ node: Int) {
		check[node] = true
		
		if check[a[node]] == false {
			dfs(a[node])
		}
		
	}
	
	var cycles = 0
	for i in 1...n {
		if check[i] == false {
			dfs(i)
			cycles += 1
		}
	}
	
	print(cycles)
}
