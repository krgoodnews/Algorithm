
import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
	
	// 머물러있는자 계산
	var stay = Array(repeating: 0, count: N+2)
	for value in stages {
		stay[value] += 1
	}
	
	// 생존자 계산
	var survivor = Array(repeating: 0, count: N+2)
	survivor[1] = stages.count
	for i in 2..<survivor.count {
		survivor[i] = survivor[i-1] - stay[i-1]
	}
	
	// 실패율 계산
	var rateFail = Array(repeating: (stage: 0, rate: 0.0), count: N+2)
	for i in 1..<rateFail.count {
		rateFail[i].stage = i
		if survivor[i] == 0 {
			rateFail[i].rate = 0
		} else {
			rateFail[i].rate = Double(stay[i]) / Double(survivor[i])
		}
		
	}
	// 실패율 소팅(내림차순, 같을경우 스테이지 숫자가 작은게 먼저)
	
	rateFail.removeFirst()
	rateFail.removeLast()
	
	rateFail = rateFail.sorted(by: { ($0.rate == $1.rate)
		? ($0.rate + Double($0.stage)) < ($1.rate + Double($1.stage))
		: $0.rate > $1.rate })
	
	//	rateFail = rateFail.sorted(by: { ($0.rate == $1.rate)
	//		? Double($0.stage) < Double($1.stage)
	//		: $0.rate > $1.rate })
	
	
	
	var answer = [Int]()
	for tuple in rateFail {
		answer.append(tuple.stage)
	}
	//
	//	for i in 1..<answer.count {
	//		if rateFail[i].rate == rateFail[i-1].rate {
	//			if answer[i] > answer[i-1] {
	//				answer.swapAt(i, i-1)
	//			}
	//		}
	//	}
	return answer
}


print(solution(5, [2, 1, 2, 6, 2, 4, 3, 3]))
print(solution(4, [4,4,4,4,4]))
