// 두 정수 사이의 합

private func solution(_ a:Int, _ b:Int) -> Int64 {
	var result = 0
	
	let minV = min(a, b)
	let maxV = max(a, b)
	for i in minV...maxV {
		result += i
	}
	
	return Int64(result)
}
