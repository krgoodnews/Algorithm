// 프로그래머스 - 나누어 떨어지는 숫자 배열
// https://programmers.co.kr/learn/courses/30/lessons/12910?language=swift

private func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
	var result = [Int]()
	
	for v in arr {
		if v%divisor == 0 {
			result.append(v)
		}
	}
	
	result.sort()
	
	if result.count == 0 {
		result.append(-1)
	}
	
	return result
}
