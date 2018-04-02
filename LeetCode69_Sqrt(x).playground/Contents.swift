/**
 * Newton's method
 * https://en.wikipedia.org/wiki/Newton%27s_method
 *
 */

class Solution {
    func mySqrt(_ x: Int) -> Int {
        var y = x
        while (y * y > x) {
            y = (y + x / y) / 2
        }
        return y
    }
}
