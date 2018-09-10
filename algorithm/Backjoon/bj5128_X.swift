// bj5128

extension StringProtocol {
	var ascii: [UInt32] {
		return unicodeScalars.compactMap { $0.isASCII ? $0.value : nil }
	}
}
extension Character {
	var ascii: UInt32? {
		return String(self).ascii.first
	}
}

/*
5
AAAA ABCD
ABCD AAAA
DARK LOKI
STRONG THANOS
DEADLY ULTIMO
*/

func distance(a: Character, b: Character) -> Int {
	var result: Int = Int(b.ascii!) - Int(a.ascii!)
	
	if result < 0 {
		result += 26
	}
	
	return result
}

let tc = Int(readLine()!)!

var answers: [String] = []
for _ in 0..<tc {
	let line = readLine()!
	
	let start:String = String(line.split(separator: " ")[0])
	let finish:String = String(line.split(separator: " ")[1])
	
	var result: [Int] = []
	for (i,value) in start.enumerated() {
		let dist = distance(a: Array(start)[i], b: Array(finish)[i])
		result.append(dist)
	}
	
	let strResult = result.map({ String($0) })
	let answer = "Distance: " + strResult.joined(separator: " ")
	
	answers.append(answer)
}

for str in answers {
	print(str)
}
