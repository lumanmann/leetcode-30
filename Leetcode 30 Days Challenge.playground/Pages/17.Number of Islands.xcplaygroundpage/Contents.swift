//: [Previous](@previous)

import Foundation
import XCTest

class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var ans = 0
        var matrix = grid

        for (i, row) in grid.enumerated() {
            for (j, _) in row.enumerated() {
                if matrix[i][j] == "1" {
                    search(i: i, j: j, grid: &matrix)
                    ans += 1
                }

            }
        }

        return ans
    }

    private func search(i: Int, j: Int, grid:  inout [[Character]]) {
        guard i >= 0, j >= 0, i < grid.count, j < grid[i].count else { return }
        if grid[i][j] == "0" {

            return }
        grid[i][j] = "0"



        search(i: i, j: j+1, grid: &grid) // right
        search(i: i+1, j: j, grid: &grid) // down
        search(i: i, j: j-1, grid: &grid) // left
        search(i: i-1, j: j, grid: &grid) // top

       
    }
}




class MyTestCase: XCTestCase {

    func testnumIslands() {
        let solution = Solution()

        let input: [[Character]] = [["1","1","1","1","0"],
                                    ["1","1","0","1","0"],["1","1","0","0","0"],["0","0","0","0","0"]]

        XCTAssertEqual(solution.numIslands(input), 1)
    }

}


MyTestCase.defaultTestSuite.run()
//: [Next](@next)

class Solution1 {

    func numIslands(_ grid: [[Character]]) -> Int {

        var grid = grid
        if grid.count == 0 {
            return 0
        }

        var numIsl = 0
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == "1" {
                    numIsl += dfs(grid: &grid, i: i, j: j)

                    print("numIslands: \(numIsl)")
                }
            }
        }
        return numIsl
    }

    private func dfs(grid: inout [[Character]], i: Int, j:Int) -> Int {

        if i < 0 || i > grid.count - 1 || j < 0 || j > grid[0].count - 1 || grid[i][j] == "0"{
            return 0
        }

        grid[i][j] = "0"

        dfs(grid: &grid, i: i+1, j: j)
        dfs(grid: &grid, i: i-1, j: j)
        dfs(grid: &grid, i: i, j: j+1)
        dfs(grid: &grid, i: i, j: j-1)

        return 1
    }
}


