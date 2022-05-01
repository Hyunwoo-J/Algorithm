import UIKit

"""
소수 찾기
"""

/// 소수의 개수를 반환합니다.
/// - Parameter n: 2 이상 1000000 이하의 자연수
/// - Returns: 소수의 개수
func solution(_ n: Int) -> Int {
    var isPrime = true // 소수인지 판별하는 변수
    var cnt = 0 // 소수의 개수
    
    for i in 2...n {
        isPrime = true
        
        for j in 2...Int(sqrt(Double(n))) + 1 {
            if i != j && i % j == 0 { // 자기 자신이 아닌 수로 나눴을 때 나머지가 0이 되면
                isPrime = false // 소수가 아니다.
                break
            }
        }
        
        cnt = isPrime ? cnt + 1 : cnt // isPrime 변수가 true면 cnt에 1을 더하고 아니면 그대로 놔둔다.
    }
    
    return cnt
}
