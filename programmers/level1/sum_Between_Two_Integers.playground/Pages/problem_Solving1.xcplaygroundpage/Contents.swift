import UIKit

"""
두 정수 사이의 합
"""

/// 두 정수 사이의 합을 구합니다.
/// - Parameters:
///   - a: 첫 번째 정수
///   - b: 두 번째 정수
/// - Returns: 두 정수 사이의 합
func solution(_ a: Int, _ b: Int) -> Int64 {
    var result = 0
    
    if a > b {
        for i in b...a {
            result += i
        }
    } else {
        for i in a...b {
            result += i
        }
    }
    
    return Int64(result)
}
