import UIKit

"""
가운데 글자 가져오기
"""

/// 단어 s의 가운데 글자를 반환합니다.
///
/// 만약, 단어의 길이가 짝수라면 가운데 두글자를 반환합니다.
/// - Parameter s: 단어
/// - Returns: 가운데 글자
func solution(_ s: String) -> String {
    let strArr = s.map { $0 }

    return strArr.count.isMultiple(of: 2) ? "\(strArr[(s.count / 2) - 1])\(strArr[s.count / 2])" : "\(strArr[s.count / 2])"
}
