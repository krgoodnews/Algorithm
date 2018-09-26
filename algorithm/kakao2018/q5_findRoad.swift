
import Foundation

struct Node {
	let index: Int
	let position: (x: Int, y: Int)
}

func solution(_ nodeinfo:[[Int]]) -> [[Int]] {
	//	var root = Node(index: -1, position: (x: 0, y: 100001))
	var nodes: [Node] = []
	for (i, value) in nodeinfo.enumerated() {
		let node = Node(index: i+1, position: (x: value[0], y: value[1]))
		nodes.append(node)
	}
	
	nodes = nodes.sorted(by: { $0.position.y > $1.position.y })
	
	
	
	let bts = BinarySearchTree(array: nodes)
	
	let preOrder = bts.preOrder()
	let postOrder = bts.postOrder()
	
	return [preOrder, postOrder]
}

// 응용 : https://github.com/raywenderlich/swift-algorithm-club/tree/master/Binary%20Search%20Tree
class BinarySearchTree {
	private(set) public var value: Node
	private(set) public var parent: BinarySearchTree?
	private(set) public var left: BinarySearchTree?
	private(set) public var right: BinarySearchTree?
	
	init(_ value: Node) {
		self.value = value
	}
	
	var isRoot: Bool {
		return parent == nil
	}
	
	var isLeaf: Bool {
		return left == nil && right == nil
	}
	
	var isLeftChild: Bool {
		return parent?.left === self
	}
	
	var isRightChild: Bool {
		return parent?.right === self
	}
	
	var hasLeftChild: Bool {
		return left != nil
	}
	
	var hasRightChild: Bool {
		return right != nil
	}
	
	var count: Int {
		return (left?.count ?? 0) + 1 + (right?.count ?? 0)
	}
	
	func insert(_ value: Node) {
		if value.position.x < self.value.position.x {
			if let left = left {
				left.insert(value)
			} else {
				left = BinarySearchTree(value)
				left?.parent = self
			}
		} else {
			if let right = right {
				right.insert(value)
			} else {
				right = BinarySearchTree(value)
				right?.parent = self
			}
		}
	}
	
	convenience init(array: [Node]) {
		precondition(array.count > 0)
		self.init(array.first!)
		
		for v in array.dropFirst() {
			insert(v)
		}
	}
	
	public var description: String {
		var s = ""
		if let left = left {
			s += "(\(left.description)) <- "
		}
		s += "\(value.index)"
		if let right = right {
			s += " -> (\(right.description))"
			
		}
		return s
		
	}
	
	func postOrder() -> [Int] {
		var answer = [Int]()
		if let left = left {
			answer += left.postOrder()
			
		}
		if let right = right {
			answer += right.postOrder()
		}
		
		answer.append(self.value.index)
		
		return answer
	}
	
	// 노드 왼쪽 오른쪽
	func preOrder() -> [Int] {
		var answer = [Int]()
		answer.append(self.value.index)
		if let left = left {
			answer += left.preOrder()
			
		}
		if let right = right {
			answer += right.preOrder()
		}
		
		return answer
	}
}

let nodeInfo = [[5,3],[11,5],[13,3],[3,5],[6,1],[1,3],[8,6],[7,2],[2,2]]
print(solution(nodeInfo))
