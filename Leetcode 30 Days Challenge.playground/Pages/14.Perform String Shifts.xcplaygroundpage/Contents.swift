//: [Previous](@previous)

import Foundation
import XCTest

class Solution {
    func stringShift(_ s: String, _ shift: [[Int]]) -> String {
        var str = Array(s)
        var move = 0
        var steps = 0

        for command in shift {
            steps = command[1]
            switch command[0] {
            case 0:
                move -= steps
            case 1:
                move += steps
            default:
                break
            }
        }


        if move == 0 {
            return s
        }

        if move > 0 {
            steps = move % s.count

        } else if move < 0 {
            steps = move % s.count + s.count
        }

        while steps > 0 && steps <= s.count {
            str.insert(str.removeLast(), at: 0)
            steps -= 1

        }


        return String(str)
    }
}

class MyTestCase: XCTestCase {

    func testStringShift() {
        let solution = Solution()

        //XCTAssertEqual(solution.stringShift("abc", [[0,1],[1,2]]), "cab", "case1")
        //XCTAssertEqual(solution.stringShift("abc", [[0,1]]), "bca", "case2")
       // XCTAssertEqual(solution.stringShift("abcdefg", [[1,1],[1,1],[0,2],[1,3]]), "efgabcd", "case3")
        //
       // XCTAssertEqual(solution.stringShift( "mecsk", [[1,4],[0,5],[0,4],[1,1],[1,5]]), "kmecs", "case4")
        XCTAssertEqual(solution.stringShift( "xqgwkiqpif", [[1,4],[0,7],[0,8],[0,7],[0,6],[1,3],[0,1],[1,7],[0,5],[0,6]]), "qpifxqgwki", "case5")



        print("-- measure \(#function) --")
        measure {
            //solution.stringShift("abcdefg", [[1,1],[1,1],[0,2],[1,3]])
        }

    }

}


MyTestCase.defaultTestSuite.run()

//: [Next](@next)
