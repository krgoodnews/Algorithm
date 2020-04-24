import Foundation

private func solution(_ food_times:[Int], _ k:Int64) -> Int {
	
	// 다 먹었을 경우 -1 반환
	let totalTime = food_times.reduce(0, +)
	if totalTime <= k {
		return -1
	}
	
	
	var answer = 0
	var times = food_times
	for i in 0..<k {
		// 다음에 먹을것을 찾다
		
	}
	
	
	
	
	
	return 0
}


solution([3, 1, 2], 5)


