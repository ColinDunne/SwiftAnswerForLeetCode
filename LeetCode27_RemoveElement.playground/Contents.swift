/**
 * 时间复杂度O(n), 空间复杂度O(1)
 */

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var end = 0
        for i in 0..<nums.count {
            if nums[i] != val {
                nums[end] = nums[i]
                end += 1
            }
        }
        return end
    }
}
