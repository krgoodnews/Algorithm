//
//  Stack.swift
//  algorithm
//
//  Created by Goodnews on 2018. 8. 20..
//  Copyright © 2018년 krgoodnews. All rights reserved.
//

import Foundation

struct Stack<Element> {
	var items = [Element]()
	mutating func push(_ item: Element) {
		items.append(item)
	}
	mutating func pop() -> Element {
		return items.removeLast()
	}
	
	var top: Element? {
		return items.last
	}
	
	var count: Int {
		return items.count
	}
	
	var isEmpty: Bool {
		return count <= 0
	}
}
