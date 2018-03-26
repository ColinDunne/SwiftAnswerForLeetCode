//: Playground - noun: a place where people can play

import UIKit

/**
 * 简单的取余数乘10的套路，注意是否超出范围
 *
 */
func reverse(_ x: Int) -> Int {
    let flag = x<0 ? -1 : 1
    var num = x * flag
    var result = 0
    while num > 0 {
        let digit = num % 10
        result = result * 10 + digit
        // 判断是否超出范围
        if result > INT32_MAX {
            return 0
        }
        num = num / 10
    }
    
    return result * flag
}

