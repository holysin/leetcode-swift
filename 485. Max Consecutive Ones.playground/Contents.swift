//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        return nums.split(separator: 0).map { $0.count }.max() ?? 0
    }
}

let solution = Solution()
let input = [1]
solution.findMaxConsecutiveOnes(input)
