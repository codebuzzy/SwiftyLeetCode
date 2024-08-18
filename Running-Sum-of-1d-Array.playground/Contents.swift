import UIKit
/* 
 
QUESTION:
Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]). Return the running sum of nums.

Example 1:
Input: nums = [1,2,3,4]
Output: [1,3,6,10]
Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].

Example 2:
Input: nums = [1,1,1,1,1]
Output: [1,2,3,4,5]
Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].

Constraints:
1 <= nums.length <= 1000
-10^6 <= nums[i] <= 10^6
 
*/


func runningSum(_ nums: [Int]) -> [Int] {
    guard !nums.isEmpty else { return [] } // if array empty then return empty list
    var runningSumList: [Int] = [nums[0]] // array to store
    var currentSum = nums[0] // variable to store sum/addition value
    for i in 1..<nums.count {
        currentSum += nums[i]
        runningSumList.append(currentSum)
    }
    return runningSumList
}
print("INPUT: \([3,1,2,10,1])")
print("OUTPUT:")
print(runningSum([3,1,2,10,1]))

/*
 
COMPLEXITY:
Time complexity: O(n)
Space complexity: O(n)
 
*/
