/**
 * 递归实现，非递归实现需要使用栈或者队列
 *
 */

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
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if ((p == nil && q != nil) || (p != nil && q == nil)) {
            return false
        } else if (p == nil && q == nil) {
            return true
        } else if p?.val != q?.val {
            return false
        } else {
            return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
        }
        
    }
}
