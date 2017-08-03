//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        let result = x ^ y
        var distance = 0

        for i in (0 ..< Int.bitWidth) {
            let tmp = result >> i
            if 1 & tmp > 0 {
                distance += 1
            }
        }

        return distance
    }
}

let s = Solution()
let distance = s.hammingDistance(1, 4)
print(distance)

