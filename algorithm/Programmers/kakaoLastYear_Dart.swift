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

func solution(_ dartResult:String) -> Int {
	
	var idxArr = [Int]() // 숫자 인덱스 모음
	
	for (i, ch) in dartResult.enumerated() {
		if let num = Int(String(ch)) {
			if num == 0 && 0 < i && Array(dartResult)[i-1] == "1" {
				continue
			}
			idxArr.append(i)
		}
	}
	
	let score1 = dartResult[0..<idxArr[1]-1]
	let score2 = dartResult[idxArr[1]..<idxArr[2]-1]
	let score3 = dartResult[idxArr[2]..<dartResult.count-1]
	
	//	print(score1[0..<1])
	var num1: Int = score1[0..<1] == "10" ? 10 : Int(score1[0])!
	for ch in score1 {
		if ch == "D" {
			num1 = num1 * num1
		} else if ch == "T" {
			num1 = num1 * num1 * num1
		}
		
		if ch == "*" {
			num1 = num1 * 2
		} else if ch == "#" {
			num1 = num1 * (-1)
		}
		
	}
	
	var num2: Int = score2[0..<1] == "10" ? 10 : Int(score2[0])!
	for ch in score2 {
		if ch == "D" {
			num2 = num2 * num2
		} else if ch == "T" {
			num2 = num2 * num2 * num2
		}
		
		if ch == "*" {
			num1 = num1 * 2
			num2 = num2 * 2
		} else if ch == "#" {
			num2 = num2 * (-1)
		}
		
	}
	
	var num3: Int = score3[0..<1] == "10" ? 10 : Int(score3[0])!
	for ch in score3 {
		if ch == "D" {
			num3 = num3 * num3
		} else if ch == "T" {
			num3 = num3 * num3 * num3
		}
		
		if ch == "*" {
			num2 = num2 * 2
			num3 = num3 * 2
		} else if ch == "#" {
			num3 = num3 * (-1)
		}
		
	}
	
	
	//	// 네개면 세개로
	//	if idxArr.count > 3 {
	//		for (i, v) in idxArr.enumerated() {
	//			if 0 < i && (idxArr[i-1] + 1) == v {
	//				idxArr.remove(at: idxArr.index(of: v)!)
	//			}
	//		}
	//	}
	
	
	return num1 + num2 + num3
}

print(solution("0T#0T*0T*"))
//solution("1D2S0T")
/*
1	1S2D*3T	37	11 * 2 + 22 * 2 + 33
2	1D2S#10S	9	12 + 21 * (-1) + 101
3	1D2S0T	3	12 + 21 + 03
4	1S*2T*3S	23	11 * 2 * 2 + 23 * 2 + 31
5	1D#2S*3S	5	12 * (-1) * 2 + 21 * 2 + 31
6	1T2D3D#	-4	13 + 22 + 32 * (-1)
7	1D2S3T*	59	12 + 21 * 2 + 33 * 2
*/
