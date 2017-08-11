//: Playground - noun: a place where people can play

import UIKit

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var queue = [TreeNode]()
        var result = [Double]()

        guard root != nil else {
            return result
        }

        queue.append(root!)
        while !queue.isEmpty {
            var sum: Double = 0
            let n = queue.count
            for i in (0 ..< n) {
                sum += Double(queue.first?.val ?? 0)
                let first = queue.remove(at: 0)
                if first.left != nil {
                    queue.append(first.left!)
                }

                if first.right != nil {
                    queue.append(first.right!)
                }
            }
            result.append(sum / Double(n))
        }

        return result
    }
}
