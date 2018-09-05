
import Foundation

func solution(_ arr:[Int]) -> Bool {
	var answer = true
	
	var setArr = Set(arr)
	// [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
	
	
	if setArr.count != arr.count {
		return false
	}
	
	if (setArr.max())! != setArr.count {
		return false
	}
	return true
}
