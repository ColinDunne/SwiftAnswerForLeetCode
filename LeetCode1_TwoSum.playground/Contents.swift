//: Playground - noun: a place where people can play

import UIKit

/**
 * 思路：
 * 将数组变形存入字典中，key为数组的值，value为值对应的下标。
 * 循环检查 target - 当前数组的值 是否同样为字典中的一个key，是则返回两个value，否则继续添加至字典中
 * 时间复杂度 O(n)  空间复杂度O(n)
 */
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int:Int]()
    
    for (index, value) in nums.enumerated() {
        if dict[target - value] == nil {
            dict[value] = index
        } else {
            return [dict[target - value]!, index]
        }
    }
    
    return [-1, -1]
}


