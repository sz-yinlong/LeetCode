
//Given a roman numeral, convert it to an integer.

import UIKit

class Solution {
    func romanToInt(_ s: String) -> Int {
        // create a dictionary that binds Roman number to Int
        
        let romanValues: [Character: Int] = [
          "I": 1,
          "V": 5,
          "X": 10,
          "L": 50,
          "C": 100,
          "D": 500,
          "M": 1000
        ]
        // need two var to iniitalize result and previuos char. so we can store the values
        
        var result = 0
        var previousValue = 0
        //now lets iterate through input string in reverse
        for ch in s.reversed() {
            // if the current value is less than previuos one, we substract current value from result, if not, we add current value to result. ch is for character.
            
            let value = romanValues[ch]!
            result += value < previousValue ? -value: value
            previousValue = value
        }
            return result
        }
    }

//lets test it!

let solution = Solution()


solution.romanToInt("IXC")
