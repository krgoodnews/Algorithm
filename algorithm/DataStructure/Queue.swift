//
//  Queue.swift
//  algorithm
//
//  Created by Goodnews on 2018. 8. 20..
//  Copyright © 2018년 krgoodnews. All rights reserved.
//

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
