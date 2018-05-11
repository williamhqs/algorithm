//: Playground - noun: a place where people can play

import Cocoa

extension Array where Element: Comparable {
    func binarySearch(searchedValue: Element, startIndex: Int, endIndex: Int) -> Int{
        
        let mid = (startIndex + endIndex)/2
        if (mid == 0 || mid == self.count - 1) && self[mid] != searchedValue {
            return -1
        }
        if self[mid] == searchedValue {
            return mid
        } else if self[mid] < searchedValue {
            return binarySearch(searchedValue: searchedValue, startIndex: mid + 1, endIndex: endIndex)
        } else {
            return binarySearch(searchedValue: searchedValue, startIndex: startIndex, endIndex: mid-1)
        }
    }
}

//Test

let original = [2,3,6,7,8,19]
let result1 = original.binarySearch(searchedValue: 0, startIndex: 0, endIndex: original.count)
print("result:\(result1)")
let result2 = original.binarySearch(searchedValue:100, startIndex: 0, endIndex: original.count)
print("result:\(result2)")
let result3 = original.binarySearch(searchedValue:8, startIndex: 0, endIndex: original.count)
print("result:\(result3)")

