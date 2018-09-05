//
//  File.swift
//  algorithm
//
//  Created by Goodnews on 2018. 8. 18..
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
}


func isVPS(str: String) -> Bool {
	
	var charStack = Stack<Character>()
	for i in str {
		charStack.push(i)
	}
	
	var str = ""
	for _ in 0..<charStack.items.count {
		str.append(charStack.pop())
		if str.suffix(2) == ")(" {
			str.removeLast(2)
		}
	}
	
	return (str == "")
	//	return false
}

let lineCount = Int(readLine()!)!

var lines = [String]()

for _ in 0..<lineCount {
	lines.append(readLine()!)
}

for line in lines {
	let lineIsVPS = isVPS(str: line)
	
	print(lineIsVPS ? "YES" : "NO")
}



