// 프로그래머스 - 2016년
// https://programmers.co.kr/learn/courses/30/lessons/12901

private func solution(_ a:Int, _ b:Int) -> String {
	let dayStrArr = ["THU","FRI","SAT", "SUN","MON","TUE","WED"]
	let month = [0, 31, 29, 31, 30, 31, 30, 31,31,30,31,30,31]
	
	var day = 0
	for i in 0..<a {
		day += month[i]
	}
	day += b
	return dayStrArr[day%7]
}

print(solution(5, 24))
