
import Foundation

var line = readLine()!.split(separator: " ").map({Int($0)!})

let count = line[0]
line.removeFirst()

var min = line.min()! // 김지민, 임한수 중 최소값
var max = line.max()!

// 둘의 번호차이가 1이면서 작은값이 홀수라면 만난거다
var round = 1
while max-min != 1 || min % 2 != 1 {
	max = Int((max + 1) / 2)
	min = Int((min + 1) / 2)
	round += 1
}

print(round)

