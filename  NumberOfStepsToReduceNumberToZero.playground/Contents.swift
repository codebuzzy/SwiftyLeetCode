import UIKit

/*
 
 Given an integer num, return the number of steps to reduce it to zero.

 In one step, if the current number is even, you have to divide it by 2, otherwise, you have to subtract 1 from it.


 Example 1:
 Input: num = 14
 Output: 6
 Explanation:
 Step 1) 14 is even; divide by 2 and obtain 7.
 Step 2) 7 is odd; subtract 1 and obtain 6.
 Step 3) 6 is even; divide by 2 and obtain 3.
 Step 4) 3 is odd; subtract 1 and obtain 2.
 Step 5) 2 is even; divide by 2 and obtain 1.
 Step 6) 1 is odd; subtract 1 and obtain 0.
 
 Example 2:
 Input: num = 8
 Output: 4
 Explanation:
 Step 1) 8 is even; divide by 2 and obtain 4.
 Step 2) 4 is even; divide by 2 and obtain 2.
 Step 3) 2 is even; divide by 2 and obtain 1.
 Step 4) 1 is odd; subtract 1 and obtain 0.
 
 Constraints:
 0 <= num <= 106
 
 */

func numberOfSteps(_ num: Int) -> Int {
    var totalSteps = 0 // create variable to return total steps
    var currentNumValue = num // create variable current "num" value
    while(currentNumValue > 0) { // if currentNumValue == 0 then stop
        if currentNumValue % 2 == 0 { // isEven check
            currentNumValue /= 2 // even - divide it by 2
        } else {
            currentNumValue -= 1 // odd - subtract 1
        }
        totalSteps += 1
    }
    return totalSteps
}
print("INPUT: \(123)")
print("OUTPUT:")
print(numberOfSteps(123))

/*
 
 COMPLEXITY:
 Time complexity: O(n)
 Space complexity: O(n)
 
 */
