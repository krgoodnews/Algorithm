
func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
	var answer = ""
	
	var allString = ""
	var num = 0
	while allString.count < m*t {
		let numStr = String(num, radix: n, uppercase: true)
		allString += numStr
		num += 1
	}
	
	for i in 0..<t {
		answer.append(Array(allString)[(i*m) + (p-1)])
	}
	
	return answer
}

