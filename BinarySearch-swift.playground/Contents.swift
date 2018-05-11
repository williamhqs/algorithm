//: Playground - noun: a place where people can play

import Cocoa

extension Array where Element: Comparable {
    func binarySearch(searchedValue: Element, startIndex: Int, endIndex: Int) -> Int{
        
        let mid = (startIndex + endIndex)/2
        if startIndex > endIndex {
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
    
    func binarySearch2(searchedValue: Element, startIndex: Int, endIndex: Int) -> Int {
        var start = startIndex
        var end = endIndex
        
        repeat  {
            let mid = (start + end)/2
            if self[mid] == searchedValue {
                return mid
            }
            if self[mid] < searchedValue {
                start = mid + 1
            } else {
                end = mid - 1
            }
        } while (start <= end)
        return -1
    }
}

//Test

let original = [2,3,6,7,8,19]
print("Binary search 1 result:")
let result1 = original.binarySearch(searchedValue: 0, startIndex: 0, endIndex: original.count - 1)
print("result:\(result1)")
let result2 = original.binarySearch(searchedValue:100, startIndex: 0, endIndex: original.count - 1)
print("result:\(result2)")
let result3 = original.binarySearch(searchedValue:8, startIndex: 0, endIndex: original.count - 1)
print("result:\(result3)")

print("Binary search 2 result:")
let result4 = original.binarySearch(searchedValue:0, startIndex: 0, endIndex: original.count - 1)
print("result:\(result4)")
let result5 = original.binarySearch(searchedValue:100, startIndex: 0, endIndex: original.count - 1)
print("result:\(result5)")
let result6 = original.binarySearch2(searchedValue:8, startIndex: 0, endIndex: original.count - 1)
print("result:\(result6)")

