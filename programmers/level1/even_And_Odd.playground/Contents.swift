import UIKit

"""
짝수와 홀수
"""

/// 짝수인지 홀수인지 판별합니다.
/// - Parameter num: int 범위의 정수
/// - Returns: 짝수일 경우 "Even"을 반환, 홀수인 경우 "Odd"를 반환
func solution(_ num: Int) -> String {
    if num.isMultiple(of: 2) {
        return "Even"
    }
    
    return "Odd"
}

"""
한 줄로 줄인 버전
"""

/// 짝수인지 홀수인지 판별합니다.
/// - Parameter num: int 범위의 정수
/// - Returns: 짝수일 경우 "Even"을 반환, 홀수인 경우 "Odd"를 반환
func solution2(_ num: Int) -> String {
    return num.isMultiple(of: 2) ? "Even" : "Odd"
}
