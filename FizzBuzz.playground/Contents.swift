import UIKit

/*
 
 Given an integer n, return a string array answer (1-indexed) where:

 answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
 answer[i] == "Fizz" if i is divisible by 3.
 answer[i] == "Buzz" if i is divisible by 5.
 answer[i] == i (as a string) if none of the above conditions are true.
 
 Example 1:
 Input: n = 3
 Output: ["1","2","Fizz"]
 
 Example 2:
 Input: n = 5
 Output: ["1","2","Fizz","4","Buzz"]
 
 Constraints:
 1 <= n <= 104
 
 */

func fizzBuzz(_ n: Int) -> [String] {
    var fizzBuzzArray = [String]() // create variable to store array of strings
    fizzBuzzArray.reserveCapacity(n) // Since we know the total size of array will be "n", reserve the space before hand, it avoids reallocation when array grows
    for i in 1...n {
        if i.isMultiple(of: 3) && i.isMultiple(of: 5) { // alternative i % 3 == 0
            fizzBuzzArray.append("FizzBuzz")
        } else if i.isMultiple(of: 3) {
            fizzBuzzArray.append("Fizz")
        } else if i.isMultiple(of: 5) {
            fizzBuzzArray.append("Buzz")
        } else {
            fizzBuzzArray.append("\(i)")
        }
    }
    return fizzBuzzArray
}
print("INPUT: \([[2,8,7],[7,1,3],[1,9,5]])")
print("OUTPUT:")
print(fizzBuzz(10000))

/*
 
 COMPLEXITY:
 Time complexity: O(n)
 Space complexity: O(n)
 
 */
