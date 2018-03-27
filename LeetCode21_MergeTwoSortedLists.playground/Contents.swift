//: Playground - noun: a place where people can play


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
 }


/**
 * 同时比较两个链表的头部节点，将val较小的并入到结果链表中
 * 时间复杂度O(n)  空间复杂度O(1)
 */
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l3 = ListNode(0)
        var node = l3
        var l1 = l1
        var l2 = l2
        
        while (l1 != nil && l2 != nil) {
            if l1!.val < l2!.val {
                node.next = l1
                l1 = l1!.next
            } else {
                node.next = l2
                l2 = l2!.next
            }
            
            node = node.next!
        }
        
        node.next = l1 ?? l2
        
        return l3.next
    }
}
