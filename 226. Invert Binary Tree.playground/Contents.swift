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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root?.left == nil && root?.right == nil {
            return root
        } else {
            let tmpRight = root?.right
            root?.right = invertTree(root?.left)
            root?.left = invertTree(tmpRight)
            return root
        }
    }
}
