//: [Previous](@previous)

import Foundation
import XCTest

class Solution {
    func checkValidString(_ s: String) -> Bool {
        let array = Array(s)
        var leftIndex: Int = 0
        var rightIndex: Int = s.count-1
        var ans = true
        var left: Character
        var right: Character

        while leftIndex < rightIndex {
            left = array[leftIndex]
            right = array[rightIndex]
            if left == "("  {

                if right == ")" || right == "*" {
                    leftIndex += 1
                    rightIndex -= 1
                } else {
                    return false
                }

            } else if right == "(" {
                if left == ")" || left == "*" {
                    leftIndex += 1
                    rightIndex -= 1
                } else {
                    ans = false
                }
            }
        }

        return ans

    }
}

class MyTestCase: XCTestCase {

    func testFindMaxLength() {
        let solution = Solution()

        XCTAssertTrue(solution.checkValidString("()"))
        XCTAssertTrue(solution.checkValidString("(*)"))
        XCTAssertTrue(solution.checkValidString("(*))"))
        XCTAssertTrue(solution.checkValidString("()()"))
        XCTAssertTrue(solution.checkValidString("(*****)"))
        XCTAssertFalse(solution.checkValidString("())"))
        XCTAssertFalse(solution.checkValidString("(*)))"))

    }

}


MyTestCase.defaultTestSuite.run()

//: [Next](@next)
