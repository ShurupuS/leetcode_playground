// https://leetcode.com/problems/longest-substring-without-repeating-characters/solution/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var result = 0
        let a = Array(s)
        var left = 0
        var charDict: [Character: Int] = [:]

        for right in 0..<a.count {
            left = max(left, charDict[a[right], default: -1] + 1)
            charDict[a[right]] = right
            result = max(result, right - left + 1)
        }

        return result
    }
}

let solution = Solution()
let num = solution.lengthOfLongestSubstring("abcabbcda")
print(num)
