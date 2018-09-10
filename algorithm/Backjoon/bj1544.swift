
import Foundation


let count = Int(readLine()!)! // 5

var results: [String] = []


func isCycle(_ input: String) -> Bool {
	
	for s in results {
		let ss = s + s
		
		if input.count == s.count && ss.range(of:input) != nil {
			return true
		}
	}
	return false
	
}



for _ in 0..<count {
	let line = readLine()!
	
	if isCycle(line) == false {
		results.append(line)
	}
}

print(results.count)



