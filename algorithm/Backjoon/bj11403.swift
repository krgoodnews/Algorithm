import Foundation

/*
7
0 0 0 1 0 0 0
0 0 0 0 0 0 1
0 0 0 0 0 0 0
0 0 0 0 1 1 0
1 0 0 0 0 0 0
0 0 0 0 0 0 1
0 0 1 0 0 0 0
*/

struct Queue<T> {
	private var items = [T]()
	
	mutating func enqueue(_ item: T) {
		items.append(item)
	}
	
	mutating func dequeue() -> T {
		return items.removeFirst()
	}
	
	var first: T {
		return items[0]
	}
	
	var count: Int {
		return items.count
	}
	
	var isEmpty: Bool {
		return count <= 0
	}
}

let line = Int(readLine()!)!

var aList = [[Int]](repeating: [], count: line)

var result = [[Int]](repeating: [Int](repeating: 0, count: line), count: line)



//print(result)
for i in 0..<line {
	let edgesLine = readLine()!.components(separatedBy: " ").map { Int($0)! }
	
	for (j, value) in edgesLine.enumerated() {
		if value == 1 {
			aList[i].append(j)
		}
	}
}

func bfs(_ n: Int) {
	var q = Queue<Int>()
	q.enqueue(n)
	
	while !(q.isEmpty) {
		let x = q.dequeue()
		for i in aList[x] {
			if result[n][i] == 0 {
				result[n][i] = 1
				q.enqueue(i)
			}
		}
	}
	
}

for i in 0..<line {
	bfs(i)
	let stringResult = result[i].map { String($0) }
	print(stringResult.joined(separator: " "))
}



