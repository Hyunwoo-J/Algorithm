import UIKit

"""
없는 숫자 더하기
"""

/// 배열에서 찾을 수 없는 0부터 9까지의 숫자를 모두 찾아 더합니다.
/// - Parameter numbers: 0부터 9까지의 숫자 중 일부를 포함한 배열
/// - Returns: 배열에서 찾을 수 없는 0부터 9까지의 숫자를 모두 더한 값
func solution(_ numbers: [Int]) -> Int {
    var result = 0
    
    for i in stride(from: 1, to: 10, by: 1) {
        if !numbers.contains(i) { // numbers 배열에 i가 포함되어 있지 않으면
            result += i // result에 i를 더한다.
        }
    }
    
    return result
}
