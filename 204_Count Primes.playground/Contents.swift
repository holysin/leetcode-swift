//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func countPrimes(_ n: Int) -> Int {
        guard n > 1 else { return 0 }

        var isPrimes = [Bool](repeating: true, count: n)
        var i = 2
        while (i * i < n) {
            if !isPrimes[i] {
                i += 1
                continue
            }
            var j = i*i
            while j < n {
                isPrimes[j] = false
                j += i
            }
            i += 1
        }

        return isPrimes.filter { $0 }.count - 2
    }
}

let solution = Solution()
solution.countPrimes(20)
