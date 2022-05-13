import UIKit

"""
문자열 내 p와 y의 개수
"""

/// 대문자와 소문자가 섞여 있는 문자열 s에 'p'의 개수와 'y'의 개수를 비교해 같으면 True, 다르면 False를 return합니다.
///
/// 단, 대소문자는 구별하지 않습니다.
/// 'p', 'y' 모두 하나도 없는 경우는 항상 True를 리턴합니다.
/// - Parameter s: 길이가 50 이하의 알파벳으로 이루어져 있는 문자열
/// - Returns: Boolean 값
func solution(_ s: String) -> Bool {
    var ans: Bool = false

    let lowerS = s.lowercased() // 대소문자를 구별하지 않기 때문에 모두 소문자로 바꿔준다.

    var sumOfP = 0
    var sumOfY = 0

    for i in lowerS {
        if i == "p" {
            sumOfP += 1
        } else if i == "y" {
            sumOfY += 1
        }
    }

    ans = sumOfP == sumOfY

    return ans
}


/// 대문자와 소문자가 섞여 있는 문자열 s에 'p'의 개수와 'y'의 개수를 비교해 같으면 True, 다르면 False를 return합니다.
///
/// 단, 대소문자는 구별하지 않습니다.
/// 'p', 'y' 모두 하나도 없는 경우는 항상 True를 리턴합니다.
/// - Parameter s: 길이가 50 이하의 알파벳으로 이루어져 있는 문자열
/// - Returns: Boolean 값
func solution2(_ s: String) -> Bool {
    var ans: Bool = false

    var sumOfP = 0
    var sumOfY = 0

    for i in s.lowercased() { // 대소문자를 구별하지 않기 때문에 모두 소문자로 바꿔준다.
        if i == "p" {
            sumOfP += 1
        } else if i == "y" {
            sumOfY += 1
        }
    }

    ans = sumOfP == sumOfY

    return ans
}
