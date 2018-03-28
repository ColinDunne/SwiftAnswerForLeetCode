/**
 * 使用快慢两个下标，两个下标的值不相同时，快下标的值给慢下标+1（这么做的前提是，原数组必须是已经排过序的）
 * 时间复杂度O(n)，空间复杂度O(1)
 */

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 2 {
            return nums.count
        }
        
        var slow = 0
        
        for fast in 1..<nums.count {
            if nums[fast] != nums[slow] {
                slow += 1
                nums[slow] = nums[fast]
            }
        }
        
        return slow+1
    }
}
