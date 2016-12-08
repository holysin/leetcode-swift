//: Playground - noun: a place where people can play

import UIKit


// Definition for a binary tree node.
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
    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        } else if root?.left == nil {
            return 1 + minDepth(root?.right)
        } else if root?.right == nil {
            return 1 + minDepth(root?.left)
        }

        return 1 + min(minDepth(root?.left), minDepth(root?.right))
    }
}
