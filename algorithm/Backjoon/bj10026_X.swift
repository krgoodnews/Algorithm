import Foundation

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

var palette = [[Int]](repeating: [Int](repeating: 0, count: line), count: line)

var check = palette // 값 복사

for i in 0..<line {
//	guard let colors = readLine()?.components(separatedBy: "") else { exit(2) }
	let colors = Array(readLine()!)
	for j in 0..<line {
		let color = colors[j]
		switch color {
		case "R":
			palette[i][j] = 1
		case "G":
			palette[i][j] = 2
		case "B":
			palette[i][j] = 3
			
		default: break
		}
	}
}
/*
5
RRRBB
GGBBB
BBBRR
BBRRR
RRRRR
*/

//print(palette)

func bfs() {
	var q = Queue<(x: Int, y: Int)>()
	q.enqueue((0,0))
	
	var components = 0
	
	for i in 0..<line {
		for j in 0..<line {
			
			if check[i][j] == 0 {
				
				check[i][j] = 1
				
				let currentColor = palette[i][j]
				// 위
				if i > 0 && check[i-1][j] == 0 {
					if currentColor == palette[i-1][j] {
						q.enqueue((j, i-1))
						check[i-1][j] = 1
						break
					}
				}
				
				// 아래
				if i > line && check[i+1][j] == 0 {
					if currentColor == palette[i+1][j] {
						q.enqueue((j, i+1))
						check[i+1][j] = 1
						break
					}
				}
				
				// 왼쪽
				if j > 0 && check[i][j-1] == 0 {
					if currentColor == palette[i][j-1] {
						q.enqueue((j-1, i))
						check[i][j-1] = 1
						break
					}
				}
				
				// 오른쪽
				if j > line && check[i][j+1] == 0 {
					if currentColor == palette[i][j+1] {
						q.enqueue((j+1, i))
						check[i][j+1] = 1
						break
					}
				}
				
				components += 1
			}
		}
	}
	
	print(components)
}
bfs()
print(check)
