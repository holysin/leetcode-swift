//: Playground - noun: a place where people can play

import UIKit

let nums = [3, 2, 4]
var subNums = nums[1..<3]

class Solution {
    func twoSum(nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        var numsMap = [Int:Int]()
        for (index, value) in nums.enumerate() {
            numsMap[value] = index
        }
        
        for (index, value) in nums.enumerate() {
            if let subIndex = numsMap[target-value] where subIndex != index {
                result.append(index)
                result.append(subIndex)
                break
            }
        }
        
        return result
    }
}

let solution = Solution()

solution.twoSum(nums, 6)