//: [Previous](@previous)

import Foundation
import XCTest

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var max = 0
        var ans = nums.first!

        for num in nums {
            if max + num < num {
                max = num
            } else {
                max += num
            }

            if max > ans {
                ans = max
            }
        }

        return ans
    }

}

class MyTestCase: XCTestCase {

    func testMaxSubArray() {
        let solution = Solution()
        
        XCTAssertEqual(solution.maxSubArray([-2,1,-3,4,-1,2,1,-5,4]), 6)

        print("-- measure \(#function) --")
        measure {
            solution.maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
        }

    }

}



MyTestCase.defaultTestSuite.run()

//: [Next](@next)
