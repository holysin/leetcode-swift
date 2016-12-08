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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        if nums.count == 0 {
            return nil
        } else if nums.count == 1 {
            return TreeNode(nums[0])
        } else {
            let mid = nums.count / 2
            let root = TreeNode(nums[mid])
            root.left = sortedArrayToBST(Array(nums[0..<mid]))
            root.right = sortedArrayToBST(Array(nums[mid+1..<nums.count]))
            return root
        }
    }
}

let nums = [1, 3]
let solution = Solution()
solution.sortedArrayToBST([0])
