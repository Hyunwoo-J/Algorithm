//: [Previous](@previous)

import Foundation

"""
두 정수 사이의 합
"""

/// 두 정수 사이의 합을 구합니다.
/// - Parameters:
///   - a: 첫 번째 정수
///   - b: 두 번째 정수
/// - Returns: 두 정수 사이의 합
func solution(_ a: Int, _ b: Int) -> Int64 {
    return Int64(a + b) * Int64(max(a, b) - min(a, b) + 1) / Int64(2)
    /*
     ex) 3, 4일 경우
     7 * (4 - 3 + 1) / 2 = 7
     
     ex) 5, 9일 경우
     14 * (9 - 5 + 1) / 2 = 35
     5 + 6 + 7 + 8 + 9 = 35
     
     * 수열의 합 공식
     n(n + 1) / 2
     */
    
}

//: [Next](@next)
