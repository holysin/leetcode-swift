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
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        var result: TreeNode?

        if(t1 != nil || t2 != nil) {
            var value = 0
            if t1?.val != nil {
                value += t1!.val
            }

            if t2?.val != nil {
                value += t2!.val
            }
            result = TreeNode(value)

            result?.left = mergeTrees(t1?.left, t2?.left)
            result?.right = mergeTrees(t1?.right, t2?.right)
        }

        return result
    }
}
