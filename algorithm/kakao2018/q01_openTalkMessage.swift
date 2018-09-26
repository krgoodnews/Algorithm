import Foundation
/*
[Enter uid1234 Muzi, Enter uid4567 Prodo,Leave uid1234,Enter uid1234 Prodo,Change uid4567 Ryan]
[Prodo님이 들어왔습니다., Ryan님이 들어왔습니다., Prodo님이 나갔습니다., Prodo님이 들어왔습니다.]
*/

func solution(_ record:[String]) -> [String] {
	
	var userName: [String: String] = [:]
	var statusArr: [(String, String)] = [] // (status, uid)
	
	for str in record {
		let status = String(str.split(separator: " ")[0])
		let uid = String(str.split(separator: " ")[1])
		
		
		if status == "Enter" || status == "Change" {
			let name = String(str.split(separator: " ")[2])
			userName[uid] = name
			
		}
		statusArr.append((status, uid))
		
		
		
	}
	
	var answer: [String] = []
	
	for status in statusArr {
		
		let nickname = userName[status.1]
		
		var statusMsg = "" // 님이 들어왔습니다
		if status.0 == "Enter" {
			statusMsg = "님이 들어왔습니다."
		} else if status.0 == "Leave" {
			statusMsg = "님이 나갔습니다."
		}
		
		if status.0 != "Change" {
			var msg = (nickname ?? "") + statusMsg
			
			answer.append(msg)
		}
	}
	
	return answer
}
print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))

