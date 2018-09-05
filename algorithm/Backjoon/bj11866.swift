
import Foundation



struct Queue<Element> {
	var items = [Element]()
	
	mutating func enqueue(_ item: Element) {
		items.append(item)
	}
	mutating func dequeue() -> Element {
		return items.removeFirst()
	}
	
	var count: Int {
		return items.count
	}

}

struct Stack<Element> {
	var items = [Element]()
	mutating func push(_ item: Element) {
		items.append(item)
	}
	mutating func pop() -> Element {
		return items.removeLast()
	}
}

let line = readLine()!
let lineSep = line.components(separatedBy: " ")

let n = Int(lineSep[0])! // 사람수
let m = Int(lineSep[1])! // 건너뛰기

var peopleQueue = Queue<Int>()
for i in 1...n {
	peopleQueue.enqueue(i)
}

var result = [Int]()
var idx = 0

repeat {
	let person = peopleQueue.dequeue()
	idx += 1
	
	if idx == m {
		result.append(person)
		idx = 0
	} else {
		peopleQueue.enqueue(person)
	}
} while peopleQueue.count > 0

print("<\(result.map({"\($0)"}).joined(separator: ", "))>")
