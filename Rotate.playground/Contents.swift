//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let n = matrix.count
        for i in 0..<matrix.count/2 {
            for j in i..<n-i-1 {
                let tmp = matrix[n-j-1][i]
                matrix[n-j-1][i] = matrix[n-i-1][n-j-1]
                matrix[n-i-1][n-j-1] = matrix[j][n-i-1]
                matrix[j][n-i-1] = matrix[i][j]
                matrix[i][j] = tmp
            }
        }
    }
}

let solution = Solution()
var matrix = [[1, 2],
              [3, 4]]
solution.rotate(&matrix)
matrix
