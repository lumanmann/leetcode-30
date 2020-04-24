//: [Previous](@previous)

import Foundation
import XCTest

class Solution {
    func isHappy(_ n: Int) -> Bool {
        var result: Set<Int> = [n]
        return cal(n: n, result: &result)

    }

    func cal(n: Int, result: inout Set<Int>) -> Bool {
        if n == 1 { return true }
        let tmp = String(n)
        let sum = tmp.reduce(into: 0) { (result, str) in
            let num = Int(String(str))!
            result += num * num
        }

        if result.contains(sum) {
            return false
        } else {
            result.insert(sum)
        }

        return cal(n: sum, result: &result)
    }


}


class MyTestCase: XCTestCase {

    func testHappyNumber() {
        let solution = Solution()

        XCTAssertTrue(solution.isHappy(19))
        XCTAssertFalse(solution.isHappy(18))

        print("-- measure \(#function) --")
        measure {
            solution.isHappy(19)
        }

    }

}



MyTestCase.defaultTestSuite.run()

//: [Next: Happy Number](@next)
