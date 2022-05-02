//: [Previous](@previous)

import Foundation

"""
없는 숫자 더하기
"""

/// 배열에서 찾을 수 없는 0부터 9까지의 숫자를 모두 찾아 더합니다.
/// - Parameter numbers: 0부터 9까지의 숫자 중 일부를 포함한 배열
/// - Returns: 배열에서 찾을 수 없는 0부터 9까지의 숫자를 모두 더한 값
func solution(_ numbers: [Int]) -> Int {
    return (0...9).filter { !numbers.contains($0) }.reduce(0, +)
    /*
     1. 0부터 9까지의 숫자 중에 numbers에 포함되어 있지 않은 숫자로 새로운 배열을 구성한다.
     2. reduce 함수를 이용해서 시작 값을 0으로 지정하고 새로운 배열에 포함된 값을 모두 더하여 리턴한다.
     */
    
}

//: [Next](@next)
