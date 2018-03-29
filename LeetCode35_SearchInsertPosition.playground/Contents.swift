/**
 * 时间复杂度O(n)， 空间复杂度O(1)
 *
 */

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var end = 0
        for num in nums {
            if num == target || target < num {
                break
            }
            end += 1
        }
        
        return end
    }
}
