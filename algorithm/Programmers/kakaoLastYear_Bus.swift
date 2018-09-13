
//
//1	1	5	[08:00, 08:01, 08:02, 08:03]	09:00
//2	10	2	[09:10, 09:09, 08:00]	09:09
//2	1	2	[09:00, 09:00, 09:00, 09:00]	08:59
//1	1	5	[00:01, 00:01, 00:01, 00:01, 00:01]	00:00
//1	1	1	[23:59]	09:00
//10	60	45	[23:59,23:59, 23:59, 23:59, 23:59, 23:59, 23:59, 23:59, 23:59, 23:59, 23:59, 23:59, 23:59, 23:59, 23:59, 23:59]	18:00

func timeToInt(_ time: String) -> Int {
	let hour = Int(time.split(separator: ":")[0])!
	let minute = Int(time.split(separator: ":")[1])!
	
	return (hour * 60) + minute
}

func intToTime(_ num: Int) -> String {
	let hour = Int(num / 60)
	let min = num % 60
	
	let strHour = 9 < hour ? String(hour) : "0\(hour)"
	let strMin = 9 < min ? String(min) : "0\(min)"
	
	return strHour + ":" + strMin
}

func solution(_ n:Int, _ t:Int, _ m:Int, _ timetable:[String]) -> String {
	var result = 0
	var crewIntArr = timetable.map({ timeToInt($0) }).sorted()
	
	for i in 1...n {
		let startTimeInt = 540 + (t * (i-1)) // n회차 버스 출발시간
		var seats = [Int]()
		
		for _ in 0..<m {
			if crewIntArr.count > 0 && crewIntArr[0] <= startTimeInt {
				seats.append(crewIntArr.removeFirst())
			}
			
			
		}
		
		// 막차일 경우
		if i == n {
			//자리가 남을 경우 막차시간 리턴
			if seats.count < m {
				result = startTimeInt
			} else {
				result = seats.last! - 1
			}
		}
		
		
	}
	
	return intToTime(result)
}

print(solution(2, 10, 2, ["09:10", "09:09", "08:00", "09:15"]))
