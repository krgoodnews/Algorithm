

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

var string = ""

var line: String?
line = readLine()
while line != nil {
	string += (line ?? "")
	line = readLine()
}
//repeat {


//} while line != ""

var arrCh = Array(repeating: 0, count: 26)

for ch in string {
	if ch != " " {
		let idx = ch.ascii! - 97
		arrCh[Int(idx)] += 1
	}
}

let max = arrCh.max()

var result = ""
for (i, value) in arrCh.enumerated() {
	if value == max {
		// Convert Int to a UnicodeScalar.
		let u = UnicodeScalar(i + 97)
		// Convert UnicodeScalar to a Character.
		let char = Character(u!)
		
		result.append(char)
	}
}
print(result)
