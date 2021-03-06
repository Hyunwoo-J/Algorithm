//: [Previous](@previous)

import Foundation

"""
평균 구하기
"""

func solution(_ arr: [Int]) -> Double {
    
    return Double(arr.reduce(0, +)) / Double(arr.count)
}

solution([1, 2, 3, 4])
solution([5, 5])

//: [Next](@next)
