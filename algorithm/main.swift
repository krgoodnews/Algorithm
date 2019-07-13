import Foundation


//
//func solution(_ food_times:[Int], _ k:Int64) -> Int {
//
//	// 다 먹었을 경우 -1 반환
//	let totalTime = food_times.reduce(0, +)
//	if totalTime <= k {
//		return -1
//	}
//
//	var remainTime = k
//	var foodTimes: [Food] = []
//
//	for (i, time) in food_times.enumerated() {
////		foodTimes.append((idx: i+1, time: time))
//		foodTimes.append(Food(idx: i+1, value: time))
//	}
//
//	var remainTimes = [Food]()
//	for food in foodTimes {
//		let idx = food.idx
//		let temp = (foodTimes.count * (food.value - 1)) + food.idx // 먹는데 걸리는 시간
//
//		remainTimes.append(Food(idx: idx, value: temp))
//	}
//
//	remainTimes = remainTimes.sorted(by: { $0.value < $1.value })
//
//	var idx = 0
//	while remainTime > 0 {
//		let firstFood = remainTimes[0]
//		if firstFood.value < remainTime {
//			remainTimes.removeFirst()
//			for (i, food) in remainTimes.enumerated() {
////				food.value = food.value - firstFood.value
//				remainTimes[i].value -= firstFood.value
//			}
//			idx = firstFood.idx
//			remainTime = remainTime - Int64(firstFood.value)
//		} else {
//			let sortFood = remainTimes.sorted(by: { $0.idx < $1.idx })
//			let temp = remainTime % Int64(remainTimes.count)
//			var answer = 0
//
//			var start = idx
//
//			return sortFood[temp].idx
//
//		}
//	}
//
//
//	print(remainTimes)
//	while remainTime > 0 {
//
//
//
//	}
//
//
//
//	return 0
////	return (index + 1 == food_times.count) ? 1 : index + 1
//}

//struct Food {
//	let idx: Int
//	var value: Int
//}

