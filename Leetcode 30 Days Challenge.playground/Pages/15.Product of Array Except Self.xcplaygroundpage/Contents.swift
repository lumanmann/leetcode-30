//: [Previous](@previous)

import Foundation
import XCTest

class Solution {
    // [1,2,3,4]
    // [1,2,6,24]
    // [24, 12, ]
    // [24,12,8,6]
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var ans: [Int] = Array(repeating: 0, count: nums.count)
        var products: [Int] = []
        var products2: [Int] = Array(repeating: 0, count: nums.count)

        for (index, num) in nums.enumerated() {
            if index == 0 {
                products.append(1)
                //products2
                continue
            }

            products.append(num * products[index-1])
            products2.append(num * products[index-1])
            print(products)
            print(products2)

        }

        return ans
    }
}

class MyTestCase: XCTestCase {

    func testFindMaxLength() {
        let solution = Solution()

        let input1 = [1,2,3,4]
        let input2 = [0,1,1,0]
        let input3 = [0,1,0,0, 1, 0, 0, 1, 0, 1]
        let input4 = [0,1,0,1]

        XCTAssertEqual(solution.productExceptSelf(input1),  [24,12,8,6])
        ////XCTAssertEqual(solution.findMaxLength(input2), 4)
       // XCTAssertEqual(solution.findMaxLength(input3), 6)
        //XCTAssertEqual(solution.findMaxLength(input4), 4)
    }

}


MyTestCase.defaultTestSuite.run()

//: [Next](@next)
