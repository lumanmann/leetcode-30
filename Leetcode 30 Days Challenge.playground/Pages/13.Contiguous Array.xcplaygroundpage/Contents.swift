//: [Previous](@previous)

import Foundation
import XCTest


class Solution {
    /// 含有相同數量的 0 和 1 的最長連續子數組的長度
    func findMaxLength(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var maxLength = 0
        var left = 0
        var right = 0
        var record: [Int: Int] = [0:0, 1:0]

//        for num in nums {
//            record[num] += 1
//
//            if record[0] != record[1] 
//        }

        return maxLength

    }
}

class MyTestCase: XCTestCase {

    func testFindMaxLength() {
        let solution = Solution()

        let input1 = [0,1]
        let input2 = [0,1,1,0]
        let input3 = [0,1,0,0, 1, 0, 0, 1, 0, 1]
        let input4 = [0,1,0,1]

        XCTAssertEqual(solution.findMaxLength(input1), 2)
        ////XCTAssertEqual(solution.findMaxLength(input2), 4)
       // XCTAssertEqual(solution.findMaxLength(input3), 6)
        //XCTAssertEqual(solution.findMaxLength(input4), 4)
    }

}


MyTestCase.defaultTestSuite.run()

//: [Next](@next)
