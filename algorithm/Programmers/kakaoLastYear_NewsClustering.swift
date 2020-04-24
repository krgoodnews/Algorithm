// extend String to enable sub-script with Int to get Character or sub-string
extension String
{
	subscript (i: Int) -> Character {
		return self[self.index(self.startIndex, offsetBy: i)]
	}
	
	// for convenience we should include String return
	subscript (i: Int) -> String {
		return String(self[i] as Character)
	}
	
	subscript (r: Range<Int>) -> String {
		let start = self.index(self.startIndex, offsetBy: r.lowerBound)
		let end = self.index(self.startIndex, offsetBy: r.upperBound)
		
		return String(self[start...end])
	}
}


private func solution(_ str1:String, _ str2:String) -> Int {
	
	// 소문자
	var lower1 = str1.lowercased()
	var lower2 = str2.lowercased()
	
	// 두글자씩
	var arr1 = [String]()
	var arr2 = [String]()
	
	for i in 0..<lower1.count-1 {
		arr1.append(lower1[i..<i+1])
	}
	
	for i in 0..<lower2.count-1 {
		arr2.append(lower2[i..<i+1])
	}
	
	// 영어만 남게 필터
	arr1 = arr1.filter({ "a" <= $0[0] && $0[0] <= "z" && "a" <= $0[1] && $0[1] <= "z" })
	arr2 = arr2.filter({ "a" <= $0[0] && $0[0] <= "z" && "a" <= $0[1] && $0[1] <= "z" })
	
	// 가중치 맵
	var weight1:[String:Int] = [:]
	var weight2:[String:Int] = [:]
	
	for element in arr1 {
		weight1[element] = (weight1[element] ?? 0) + 1
	}
	
	for element in arr2 {
		weight2[element] = (weight2[element] ?? 0) + 1
	}
	
	
	let set1 = Set(arr1)
	let set2 = Set(arr2)
	
	// 교집합
	let intersection = set1.intersection(set2)
	var interValue = 0
	for str in intersection {
		let minNum = min(weight1[str] ?? 0, weight2[str] ?? 0)
		interValue += minNum
	}
	
	// 합집합
	let union = set1.union(set2)
	var unionValue = 0
	for str in union {
		let maxNum = max(weight1[str] ?? 0, weight2[str] ?? 0)
		unionValue += maxNum
	}
	
	if unionValue == 0 { return 65536 }
	let answer = Double(interValue) / Double(unionValue) * 65536.0
	
	return Int(answer)
}

//solution("aa1+aa2", "AAAA12")
solution("E=M*C^2", "e=m*c^2")
