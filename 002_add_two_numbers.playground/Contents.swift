//: Playground - noun: a place where people can play

import UIKit

/**
 * Definition for singly-linked list.
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

let l1_1 = ListNode(5)
let l1_2 = ListNode(4)
let l1_3 = ListNode(3)
l1_1.next = l1_2
l1_2.next = l1_3

let l2_1 = ListNode(5)
let l2_2 = ListNode(6)
let l2_3 = ListNode(7)
l2_1.next = l2_2
l2_2.next = l2_3

func printList(list: ListNode?) {
    var node : ListNode? = list
    while node != nil {
        print("value \(node!.val)")
        node = node!.next
    }
}

//printList(l1_1)
//printList(l2_1)

class Solution {
    func addTwoNumbers(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var l1_node : ListNode? = l1
        var l2_node : ListNode? = l2
        var listHead : ListNode?
        var currentNode : ListNode?
        
        var sum = 0
        while l1_node != nil || l2_node != nil {
            
            if let l1_value = l1_node?.val {
                sum += l1_value
                l1_node = l1_node?.next
            }
            
            if let l2_value = l2_node?.val {
                sum += l2_value
                l2_node = l2_node?.next
            }
            
            let tmp = ListNode(sum%10)
            if listHead == nil {
                listHead = tmp
                currentNode = listHead
            } else {
                currentNode?.next = tmp
                currentNode = currentNode?.next
            }
            
            sum /= 10
        }
        
        if sum > 0 {
            let node = ListNode(sum)
            currentNode?.next = node
        }
        
        return listHead
    }
}

let solution = Solution()
var result = solution.addTwoNumbers(l1_1, l2_1)
printList(result)

 