//: [Previous](@previous)

import Foundation
import XCTest

class MinStack {

    var data: [Int] = []
    var min: Int?

    /** initialize your data structure here. */
    init() {
    }

    func push(_ x: Int) {
        if min == nil {
            min = x

        } else {
            if min! > x {
                min = x
            }
        }
        data.append(x)

    }

    func pop() {
        guard !data.isEmpty else {
            min = nil
            return
        }
        if let min = min, data[data.count-1] == min {
            data.popLast()
            var tmp = data.first
            for num in data {
                if let t = tmp, num < t {
                    tmp = num
                }
            }
            self.min = tmp
        } else {
            data.popLast()
        }

    }

    func top() -> Int {
        guard !data.isEmpty else {
            return -1
        }
        return data[data.count-1]
    }

    func getMin() -> Int {
        guard !data.isEmpty else {
            return -1
        }
        return min ?? 0
    }
}


/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */

class MyTestCase: XCTestCase {

    func testMaxSubArray() {
        var minStack = MinStack()
        minStack.push(-2)
        minStack.push(0)
        minStack.push(-3)
        XCTAssertEqual(minStack.getMin() , -3)
        minStack.pop()
        XCTAssertEqual(minStack.top() , 0)
        XCTAssertEqual(minStack.getMin() , -2)

        var minStack2 = MinStack()
        minStack2.push(1)
        minStack2.push(2)
       XCTAssertEqual(minStack2.getMin() , 1)
        XCTAssertEqual(minStack2.top() , 2)
        minStack2.pop()

        XCTAssertEqual(minStack2.getMin() , 1)
        XCTAssertEqual(minStack2.top() , 1)


        var minStack3 = MinStack()
         minStack3.push(2147483646)
         minStack3.push(2147483646)
         minStack3.push(2147483647)
        XCTAssertEqual(minStack3.top() , 2147483647)

         minStack3.pop()

         XCTAssertEqual(minStack3.getMin() , 2147483646)
        minStack3.pop()
        XCTAssertEqual(minStack3.getMin() , 2147483646)
         XCTAssertEqual(minStack3.top() , 2147483646)
        minStack3.pop()
         minStack3.push(2147483647)
        XCTAssertEqual(minStack3.top() , 2147483647)
        XCTAssertEqual(minStack3.getMin() , 2147483647)
        minStack3.push(-2147483648)
        XCTAssertEqual(minStack3.top() , -2147483648)
        XCTAssertEqual(minStack3.getMin(), -2147483648)
        minStack3.pop()
        XCTAssertEqual(minStack3.getMin(), 2147483647)

    }

}



MyTestCase.defaultTestSuite.run()

//: [Next](@next)
