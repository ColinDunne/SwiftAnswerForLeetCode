/**
 * 斐波那契数非递归实现
 * 时间复杂度O(n)，空间复杂度O(1)
 */

class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 0 {
            return 0
        } else if n == 1 {
            return 1
        } else if n == 2 {
            return 2
        }
        
        var two_steps_before = 1
        var one_step_before = 2
        var all_ways = 0
        
        for _ in 3...n {
            all_ways = two_steps_before + one_step_before
            two_steps_before = one_step_before
            one_step_before = all_ways
        }
        
        return all_ways
    }
}
