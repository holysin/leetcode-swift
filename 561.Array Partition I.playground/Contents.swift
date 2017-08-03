//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var result = 0

        let sortedNums = nums.sorted()
        for i in stride(from: 0, to: sortedNums.count, by: 2) {
            result += (sortedNums[i] + sortedNums[i+1])
        }

        return result
    }
}
