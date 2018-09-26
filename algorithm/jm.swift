
/*
2
7
3 1 3 7 3 4 6
8
1 2 3 4 5 6 7 8
*/
//
//
//let tc = Int(readLine()!)!
//
//for _ in 0..<tc {
//	var answer = 0
//
//	let n = Int(readLine()!)!
//	var selectArr = readLine()!.split(separator: " ").map({ Int($0)! })
//
//
//	print(answer)
//}


// 중복가능
//func combos<T>(elements: ArraySlice<T>, k: Int) -> [[T]] {
//	if k == 0 {
//		return [[]]
//	}
//
//	guard let first = elements.first else {
//		return []
//	}
//
//	let head = [first]
//	let subcombos = combos(elements: elements, k: k - 1)
//	var ret = subcombos.map { head + $0 }
//	ret += combos(elements: elements.dropFirst(), k: k)
//
//	return ret
//}
//
//func combos<T>(elements: Array<T>, k: Int) -> [[T]] {
//	return combos(elements: ArraySlice(elements), k: k)
//}

//print(combos(elements: [1, 2, 3], k: 3))




// 조합: combination: 중복안됨
//func combinations<T>(source: [T], takenBy : Int) -> [[T]] {
//	if(source.count == takenBy) {
//		return [source]
//	}
//
//	if(source.isEmpty) {
//		return []
//	}
//
//	if(takenBy == 0) {
//		return []
//	}
//
//	if(takenBy == 1) {
//		return source.map { [$0] }
//	}
//
//	var result : [[T]] = []
//
//	let rest = Array(source.suffix(from: 1))
//	let sub_combos = combinations(source: rest, takenBy: takenBy - 1)
//	result += sub_combos.map { [source[0]] + $0 }
//
//	result += combinations(source: rest, takenBy: takenBy)
//
//	return result
//}
//
//for i in 0...4 {
//	print(combinations(source: [1,2,3,4], takenBy: i))
//}



func changeLength(_ str: String, to: Int) -> String {
	let count = str.count
	
	var zeros = ""
	for _ in 0..<(to - count) {
		zeros.append("0")
	}
	
	return zeros + str
}

var str = String(71, radix: 2)
print(str)


str = changeLength(str, to: 10)



