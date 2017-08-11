//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        return nums.reduce(0, ^)
    }
}
