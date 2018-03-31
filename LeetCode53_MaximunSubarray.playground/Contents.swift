/**
 * Kadane's algorithm
 * https://en.wikipedia.org/wiki/Maximum_subarray_problem
 * 时间复杂度 O(n)，空间复杂度O(1)
 * 思路  var nums = [-2,1,-3,4,-1,2,1,-5,4]
 *         num |-2 | 1 |-3 | 4 |-1 | 2 | 1 |-5 | 4 |
 *  currentMax |-2 | 1 |-2 | 4 | 3 | 5 | 6 | 1 | 5 |
 *   globalMax |-2 | 1 | 1 | 4 | 4 | 5 | 6 | 6 | 6 |
 */

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var currentMax = nums[0]
        var globalMax = nums[0]
        
        for index in 1..<nums.count {
            currentMax = max(nums[index], currentMax+nums[index])
            globalMax = max(globalMax, currentMax)
        }
        
        return globalMax
    }
}

