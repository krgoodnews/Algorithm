
import Foundation

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        for (i, char) in s.enumerated() {
            if s.firstIndex(of: char) == s.lastIndex(of: char) {
                return i
            }
        }

        return -1
    }
}
