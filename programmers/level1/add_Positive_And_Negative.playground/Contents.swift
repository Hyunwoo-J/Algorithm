import UIKit

"""
음양 더하기
"""

/// 실제 정수들의 합을 구합니다.
///
/// 정수들의 절댓값을 차례대로 담은 정수 배열 absolutes와 이 정수들의 부호를 차례대로 담은 불리언 배열 signs가 매개변수로 주어집니다.
/// - Parameters:
///   - absolutes: 정수들의 절댓값을 차례대로 담은 정수 배열
///   - signs: 정수들의 부호를 차례대로 담은 불리언 배열
/// - Returns: 정수들의 합
func solution(_ absolutes: [Int], _ signs: [Bool]) -> Int {
    
    var arr = [(Int, Bool)]()
    
    for i in 0..<signs.count {
        arr.append((i, signs[i]))
    }
    
    var intArr = [Int]()
    
    for (i, j) in arr {
        if j {
            intArr.append(absolutes[i])
        } else {
            intArr.append(-absolutes[i])
        }
    }
    
    var sum = 0
    
    for i in intArr {
        sum += i
    }
    
    return sum
}


/// 실제 정수들의 합을 구합니다.
///
/// 정수들의 절댓값을 차례대로 담은 정수 배열 absolutes와 이 정수들의 부호를 차례대로 담은 불리언 배열 signs가 매개변수로 주어집니다.
/// - Parameters:
///   - absolutes: 정수들의 절댓값을 차례대로 담은 정수 배열
///   - signs: 정수들의 부호를 차례대로 담은 불리언 배열
/// - Returns: 정수들의 합
func solution2(_ absolutes: [Int], _ signs: [Bool]) -> Int {
    var sum = 0
    
    for i in 0..<signs.count {
        sum += signs[i] ? absolutes[i] : -absolutes[i] // signs의 불리언 값에 따라 그대로 양수값으로 더하거나 음수값으로 변환하여 더한다. (True면 그대로 더하고, False면 음수로 변환해서 더한다.)
    }
    
    return sum
}
