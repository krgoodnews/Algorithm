// 정수 내림차순으로 배치하기

private func solution(_ n:Int64) -> Int64 {
	var arr = Array(String(n)).sorted().reversed()
	
	var result = ""
	for ch in arr {
		result.append(ch)
	}
	
	
	return Int64(result)!
	
}


