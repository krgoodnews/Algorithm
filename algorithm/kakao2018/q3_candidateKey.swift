
import Foundation

// 조합: combination: 중복안됨
func combinations<T>(source: [T], takenBy : Int) -> [[T]] {
	if(source.count == takenBy) {
		return [source]
	}
	
	if(source.isEmpty) {
		return []
	}
	
	if(takenBy == 0) {
		return []
	}
	
	if(takenBy == 1) {
		return source.map { [$0] }
	}
	
	var result : [[T]] = []
	
	let rest = Array(source.suffix(from: 1))
	let sub_combos = combinations(source: rest, takenBy: takenBy - 1)
	result += sub_combos.map { [source[0]] + $0 }
	
	result += combinations(source: rest, takenBy: takenBy)
	
	return result
}

func solution(_ relation:[[String]]) -> Int {
	let column = relation[0].count // 4
	let rows = relation.count // 6
	var answerArr:[[Int]] = []
	//세로 배열 -> 가로 배열
	var infoArr: [[String]] = Array(repeating: [String](), count: column) // num, name, major, grade
	for row in relation {
		for i in 0..<column {
			infoArr[i].append(row[i])
		}
	}
	
	let arr = Array(0..<column)
	var candidates: [[Int]] = []
	// 1...column개까지 뽑아서 다 돌린다
	for i in 1...column {
		let temp = combinations(source: arr, takenBy: i)
		candidates = candidates + temp
	}
	
	
	func isDuplicate(_ candi: [Int]) -> Bool {
		for ans in answerArr {
			let intersect = Set(candi).intersection(Set(ans))
			if Set(ans) == intersect {
				return true
			}
		}
		
		return false
	}
	
	
	// 모든 후보들 다 돌기
	for candi in candidates {
		var infos = [String]()
		
		guard isDuplicate(candi) == false else { continue }
		
		for i in 0..<rows {
			var info = ""
			for value in candi {
				info.append(infoArr[value][i] + " ")
			}
			infos.append(info)
		}
		
		// 중복된다면 검사 후 값에 넣기
		if Set(infos).count == infos.count {
			answerArr.append(candi)
		}
		
		
	}
	return answerArr.count
}

/*
[[100,ryan,music,2],[200,apeach,math,2],[300,tube,computer,3],[400,con,computer,4],[500,muzi,music,3],[600,apeach,music,2]]
*/
//
//func solution(_ relation:[[String]]) -> Int {
//
//	//	var students = [Student]()
////	for arr in relation {
////		let student = Student(arr: arr)
////		students.append(student)
////	}
//
//	// 세로 배열 -> 가로 배열
//	var infoArr: [[String]] = [[], [], [], []] // num, name, major, grade
//	for arr in relation {
//		infoArr[0].append(arr[0])
//		infoArr[1].append(arr[1])
//		infoArr[2].append(arr[2])
//		infoArr[3].append(arr[3])
//	}
//
//	var attributes = [0,1,2,3]
//	var answer = 0
//	var answerArr: [[Int]] = []
//
//
//	var willDelete = [Int]()
//
//
//	// 한개짜리
//	for i in 0...3 {
//		if Set(infoArr[i]).count == infoArr[i].count {
//			answer += 1
//			answerArr.append([i])
//			willDelete.append(i)
//		}
//	}
//	for i in willDelete.reversed() {
//		attributes.remove(at: i)
//	}
//
//
//
//
//	// 두개짜리
//	let twos = combinations(source: attributes, takenBy: 2).map({ ($0[0], $0[1]) })
//
//	for tuple in twos {
//		var infos = [String]()
//		for i in 0..<infoArr[0].count {
//			let info = infoArr[tuple.0][i] + " " + infoArr[tuple.1][i]
//			infos.append(info)
//		}
//		if Set(infos).count == infos.count {
//			answer += 1
//			answerArr.append([tuple.0, tuple.1].sorted())
//		}
//	}
//
//
//	// 세개짜리
//	let threes = combinations(source: attributes, takenBy: 3).map({ $0.sorted() })
//	for arr in threes {		// [[1,2,3] , [2,3,4]]
//
//		for ans in answerArr {
//			let setCount = Set(arr).intersection(Set(ans)).count
//			let ansCount = ans.count
//			if  setCount != ansCount && setCount >= 2 {
//				var infos = [String]()
//
//				for i in 0..<infoArr[0].count {
//					var info = ""
//					for value in arr {
//						info.append(infoArr[value][i] + " ")
//					}
//				}
//
//				if Set(infos).count == infos.count {
//					answer += 1
//					answerArr.append(arr)
//				}
//			}
//		}
//
//
//
//	}
//
//	// 네개짜리
//	if answerArr.count == 0 { answerArr.append([99]) }
//
//
//	return answerArr.count
//}

import Foundation




solution([["100","ryan","music","2"],["200","apeach","math","2"],["300","tube","computer","3"],["400","con","computer","4"],["500","muzi","music","3"],["600","apeach","music","2"]])


/*
[["num"], ["name"], ["major"], ["grade"]]
[["num", "name"], ["num", "major"], ["num", "grade"], ["name", "major"], ["name", "grade"], ["major", "grade"]]
[["num", "name", "major"], ["num", "name", "grade"], ["num", "major", "grade"], ["name", "major", "grade"]]
[["num", "name", "major", "grade"]]

*/
