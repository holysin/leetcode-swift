//: Playground - noun: a place where people can play


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

class Stack<T> {
    private var array: Array<T> = []

    func push(_ element: T) {
        array.insert(element, at: 0)
    }

    func pop() -> T? {
        if let element = array.first {
            array.remove(at: 0)
            return element
        }
        return nil
    }

    var top: T? {
        return array.first
    }

    var isEmpty: Bool {
        return array.isEmpty
    }
}

class Solution {
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }

        var result = [Int]()

        let stack = Stack<TreeNode>()
        stack.push(root)

        while !stack.isEmpty {
            let node = stack.top
            if node != nil {
                result.insert(node!.val, at: 0)
                stack.pop()
            }

            if let left = node?.left {
                stack.push(left)
            }

            if let right = node?.right {
                stack.push(right)
            }
        }

        return result
    }
}
