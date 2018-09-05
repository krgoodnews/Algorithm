var a: [[Int]] = Array(repeating: [], count: 1001)
var check: [Bool] = Array(repeating: false, count: 1001)
func dfs(_ node: Int) {
	check[node] = true
	
	for i in 0..<a[node].count {
		let next = a[node][i]
		
		if check[next] == false {
			dfs(next)
		}
	}
}
/*
6 5
1 2
2 5
5 1
3 4
4 6
*/
var line = readLine()!.split(separator: " ").map( { Int($0)! })
let n = line[0]
let m = line[1]

for _ in 0..<m {
	line = readLine()!.split(separator: " ").map( { Int($0)! })
	let u = line[0]
	let v = line[1]
	
	a[u].append(v)
	a[v].append(u)
}

var components = 0
for i in 1...n {
	if check[i] == false {
		dfs(i)
		components += 1
	}
}

print(components)

