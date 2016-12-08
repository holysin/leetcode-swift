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
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        guard let root = root else {
            return false
        }

        if sum == root.val && root.left == nil && root.right == nil {
            return true
        } else {
            return (hasPathSum(root.left, sum - root.val)
                || hasPathSum(root.right, sum - root.val))
        }
    }
}
