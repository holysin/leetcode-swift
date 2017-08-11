//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        guard nums.count > 0 && (r * c == nums.count * nums.first!.count) else { return nums }
        var result = [[Int]]()

        for i in (0 ..< r) {
            result.append([Int](repeatElement(0, count: c)))
        }

        var row = 0
        var column = 0

        for i in (0 ..< r) {
            for j in (0 ..< c) {
                result[i][j] = nums[row][column]
                column += 1
                if column == nums.first!.count - 1 {
                    row += 1
                    column = 0
                }
            }
        }

        return result
    }
}
