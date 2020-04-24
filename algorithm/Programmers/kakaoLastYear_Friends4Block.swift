private func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
	var result = 0
	
	var willDeletePositions:[(Int, Int)] = []
	
	//	라이언(R), 무지(M), 어피치(A), 프로도(F), 네오(N), 튜브(T), 제이지(J), 콘(C)
	var chBoard: [[Character]] = []
	
	for str in board {
		chBoard.append(Array(str))
	}
	
	// 삭제 될 좌표들
	func willDeleteIdx(_ y: Int, _ x: Int) -> [(Int, Int)] {
		let ch = chBoard[y][x]
		if chBoard[y][x] == " " { return [] }
		if chBoard[y+1][x] != ch { return [] }
		if chBoard[y][x+1] != ch { return [] }
		if chBoard[y+1][x+1] != ch { return [] }
		
		return [(y, x), (y+1, x), (y, x+1), (y+1, x+1)]
	}
	
	func dropBlock() {
		var newChBoard:[[Character]] = Array(repeating: Array(repeating: " ", count: n), count: m)
		for x in 0..<n {
			var chLine = [Character]()
			for y in 0..<m {
				chLine.append(chBoard[y][x])
			}
			let filterChLine = chLine.filter({ $0 != " " }).reversed()
			
			for (i, ch) in filterChLine.enumerated() {
				newChBoard[(m-i)-1][x] = ch
			}
		}
		chBoard = newChBoard
	}
	
	for i in 0..<m-1 {
		for j in 0..<n-1 {
			let positions = willDeleteIdx(i, j)
			willDeletePositions = willDeletePositions + positions
			
		}
	}
	
	// 삭제
	for pos in willDeletePositions {
		let ch = chBoard[pos.0][pos.1]
		if ch != " " {
			result += 1
			chBoard[pos.0][pos.1] = " "
		}
		
	}
	
	
	
	dropBlock()
	
	// chBoard to [String]
	var strArr = [String]()
	
	for chArr in chBoard {
		strArr.append(String(chArr))
	}
	
	if willDeletePositions.count != 0 {
		result += solution(m, n, strArr)
	}
	
	return result
}

print(solution(6, 6, ["TTTANT", "RRFACC", "RRRFCC", "TRRRAA", "TTMMMF", "TMMTTJ"]))

