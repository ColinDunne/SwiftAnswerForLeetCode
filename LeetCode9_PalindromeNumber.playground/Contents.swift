//: Playground - noun: a place where people can play

import UIKit
/**
 * 注意边界场景，注意回文数有两种形式 121 和 1221
 */
func isPalindrome(_ x: Int) -> Bool {
    if x < 0 || (x > 0 && x % 10 == 0) {
        return false
    }
    var result = 0
    var x = x
    while x > result {
        let temp = x % 10
        result = result * 10 + temp
        x = x / 10
    }
    
    return x == result || x == (result / 10)
}
