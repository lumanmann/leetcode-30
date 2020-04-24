//: [Previous](@previous)

import Foundation
import XCTest

class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {

    }
}

class MyTestCase: XCTestCase {

    func testMinPathSum() {
        let solution = Solution()

        let input: [[Int]] = [
          [1,3,1],
          [1,5,1],
          [4,2,1]
        ]

        XCTAssertEqual(solution.minPathSum(input), 7)
    }

}


MyTestCase.defaultTestSuite.run()

//: [Next](@next)

