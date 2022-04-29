import UIKit

"""
평균 구하기
"""

/// 정수를 담고 있는 배열의 평균을 구합니다.
/// - Parameter arr: 정수를 담고 있는 배열
/// - Returns: 평균값
func solution(_ arr: [Int]) -> Double {
    
    var sum = 0
    
    for i in arr {
        sum += i // 배열의 요소를 모두 더한다.
    }
    
    let avg = Double(sum) / Double(arr.count) // 평균값을 구한다.
    
    return avg
}

solution([1, 2, 3, 4])
solution([5, 5])
