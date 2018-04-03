/**
 * 从后往前遍历，大的数字优先放到后面
 * 时间复杂度O(n)， 空间复杂度O(1)
 */

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i=m-1
        var j=n-1
        var k = m+n-1
        while (i >= 0 && j >= 0) {
            if (nums1[i] > nums2[j]) {
                nums1[k] = nums1[i]
                k -= 1
                i -= 1
            } else {
                nums1[k] = nums2[j]
                k -= 1
                j -= 1
            }
        }
        while (j >= 0) {
            nums1[k] = nums2[j]
            k -= 1
            j -= 1
        }
    }
}
