//: Playground - noun: a place where people can play

/**
 * 使用Stack来检测是否满足匹配规则
 * 时间复杂度 O(n), 空间复杂度 O(n)
 */
class Solution {
    func isValid(_ s: String) -> Bool {
        var temp = [Character]()
        
        for i in s {
            if(i == "(" || i == "{" || i == "[") {
                temp.append(i)
            } else if(i == "]") {
                if(temp.isEmpty || temp.last != "[") {
                    return false
                } else {
                    temp.removeLast()
                }
            } else if(i == "}") {
                if(temp.isEmpty || temp.last != "{") {
                    return false
                } else {
                    temp.removeLast()
                }
            } else if(i == ")") {
                if(temp.isEmpty || temp.last != "(") {
                    return false
                } else {
                    temp.removeLast()
                }
            }
        }
        
        return temp.isEmpty
    }
}
