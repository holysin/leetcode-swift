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
    func isBalanced(_ root: TreeNode?) -> Bool {


        return false
    }

    func height(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        } else {
            return 1 + max(height(root?.left), height(root?.right))
        }
    }
}
