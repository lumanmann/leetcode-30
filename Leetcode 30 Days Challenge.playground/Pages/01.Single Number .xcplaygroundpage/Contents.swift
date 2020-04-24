//: [Previous](@previous)

import Foundation
import XCTest

public class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var records = [Int:Int]()

        for num in nums {
            if let temp = records[num] {
                records[num] = temp + 1
            } else {
                records[num] = 1
            }
        }

        return records.filter{ $0.value == 1}.first!.key
    }
}

class MyTestCase: XCTestCase {

    func testSingleNumber() {
        let solution = Solution()
        let test1 = [4,1,2,1,2]
        let test2 = [2,2,1]
        XCTAssertEqual(solution.singleNumber(test1), 4)
        XCTAssertEqual(solution.singleNumber(test2), 1)
        XCTAssertNotEqual(solution.singleNumber(test1), 2)
        XCTAssertNotEqual(solution.singleNumber(test2), 2)

        print("-- measure \(#function) --")
        measure {
            solution.singleNumber([2,2,1])
        }

    }

    

}



MyTestCase.defaultTestSuite.run()

//: [Next](@next)
