//
//  BST.swift
//  algorithm
//
//  Created by Goodnews on 2018. 8. 20..
//  Copyright © 2018년 krgoodnews. All rights reserved.
//

class BinarySearchTree<T: Comparable> {
	private(set) public var value: T
	private(set) public var parent: BinarySearchTree?
	private(set) public var left: BinarySearchTree?
	private(set) public var right: BinarySearchTree?
	
	init(_ value: T) {
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
	
	func insert(_ value: T) {
		if value < self.value {
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
	
	convenience init(array: [T]) {
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
		s += "\(value)"
		if let right = right {
			s += " -> (\(right.description))"
			
		}
		return s
		
	}
	
	func isContain(_ v: T) -> Bool {
		
		if v == self.value {
			return true
			
		} else if v < self.value {
			return left?.isContain(v) ?? false
		} else {
			return right?.isContain(v) ?? false
		}
	}
	
	func printPostOrder() {
		if let left = left {
			left.printPostOrder()
		}
		if let right = right {
			right.printPostOrder()
		}
		
		print(self.value)
	}
}
