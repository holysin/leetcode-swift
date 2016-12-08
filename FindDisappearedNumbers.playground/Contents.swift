//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var counter = [Bool](repeating: false, count: nums.count+1)
        for num in nums {
            counter[num] = true
        }

        var result = [Int]()
        for (index, value) in counter.enumerated() {
            if index == 0 {
                continue
            }
            if !value {
                result.append(index)
            }
        }

        return result
    }
}

let solution = Solution()
let nums = [4,3,2,7,8,2,3,1]
solution.findDisappearedNumbers(nums)
