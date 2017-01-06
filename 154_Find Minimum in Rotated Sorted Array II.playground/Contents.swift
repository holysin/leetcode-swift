//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var lo = 0
        var hi = nums.count - 1
        var mid = 0

        while(lo < hi) {
            mid = lo + (hi - lo) / 2

            if (nums[mid] > nums[hi]) {
                lo = mid + 1
            } else if (nums[mid] < nums[hi]) {
                hi = mid
            } else { // when num[mid] and num[hi] are same
                hi -= 1
            }
        }
        return nums[lo]
    }
}


let nums = [4, 5, 6, 7, 0, 1, 2]
let s = Solution()
s.findMin(nums)
