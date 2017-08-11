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
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        guard root != nil else {
            return false
        }

        var midOrderArray = [TreeNode]()

        midorderStoreTree(root, array: &midOrderArray)

        let valArray = midOrderArray.map { $0.val }

        let tmpArray = valArray.map { k - $0 }

        var i = 0, j = valArray.count - 1

        while i < j {
            if valArray[i] == tmpArray[j] {
                return true
            } else {
                if valArray[i] < tmpArray[j] {
                    i += 1
                } else {
                    j -= 1
                }
            }
        }

        return false
    }

    func midorderStoreTree(_ root: TreeNode?,  array: inout [TreeNode]) {
        if root != nil {
            midorderStoreTree(root?.left, array: &array)
            array.append(root!)
            midorderStoreTree(root?.right, array: &array)
        }
    }
}
