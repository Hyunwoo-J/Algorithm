import UIKit

"""
약수의 합
"""

/// 약수의 합을 리턴합니다.
/// - Parameter n: 3000 이하의 정수
/// - Returns: 약수의 합
func solution(_ n: Int) -> Int {
    var sum = 0
    
    guard n > 0 else {
        return sum
    }
    
    for i in 1..<(n + 1) {
        if n % i == 0 {
            sum += i
        }
    }
    
    return sum
}
