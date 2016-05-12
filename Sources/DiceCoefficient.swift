//
//  DiceCoefficient.swift
//  DiceCoefficient
//
//  Created by Shiv Baijal on 2016-05-11.
//
//  The MIT License (MIT)
//
//  Copyright © 2016 Shiv Baijal
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import Foundation

public extension String {


  /**
    Returns a list of the string's bigrams.
    E.g. "cool" -> ["co","oo","ol"]
  */
  func bigrams() -> [String] {
    var result: [String] = []
    for i in 0...characters.count - 2 {
      let index = lowercaseString.startIndex.advancedBy(i)
      result.append(lowercaseString.substringWithRange(index...index.successor()))
    }
    return result
  }

  /**
    Calculates the case insensitive string similarity (Sørensen–Dice coefficient) between two strings
    - parameter otherString: string to compare with
    - returns: A Float from 0 to 1, where 1 indicates strings are identical
  */
  func diceCoefficient(otherString: String) -> Float {
    if self == otherString {
      return 1
    }

    if characters.count < 2 || otherString.characters.count < 2 {
      return 0
    }

    let sortedBigrams = bigrams().sort()
    let otherSortedBigrams = otherString.bigrams().sort()

    var matches = 0
    var i = 0
    var j = 0

    while i < sortedBigrams.count && j < otherSortedBigrams.count {
      if sortedBigrams[i] == otherSortedBigrams[j] {
          matches += 1
          i += 1
          j += 1
      } else if sortedBigrams[i] < otherSortedBigrams[j] {
          i += 1
      } else {
          j += 1
      }
    }

    return Float(matches * 2) / Float(sortedBigrams.count + otherSortedBigrams.count)
  }

}
