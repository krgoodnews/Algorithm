
func solution(_ phoneBook:[String]) -> Bool {
	
	for i in 0..<phoneBook.count-1 {
		for j in (i+1)..<phoneBook.count {
			if phoneBook[i].count < phoneBook[j].count {
				if phoneBook[j].hasPrefix(phoneBook[i]) {
					return false
				}
			} else {
				if phoneBook[i].hasPrefix(phoneBook[j]) {
					return false
				}
			}
		}
	}
	
	
	return true
}


