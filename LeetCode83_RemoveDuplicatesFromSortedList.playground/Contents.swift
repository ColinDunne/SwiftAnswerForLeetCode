/**
 * 此题看起来很简单，但实际写起来还是有些别扭的
 * 时间复杂度O(n)， 空间复杂度O(1)
 */

public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
 }

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil || head!.next == nil {
            return head
        }
        
        var node = head
        while node != nil {
            if node!.next == nil {
                break
            }
            if node!.val == node!.next?.val {
                node!.next = node!.next?.next
            } else {
                node = node!.next
            }
        }
        
        return head
    }
}
