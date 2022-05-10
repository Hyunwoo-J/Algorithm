//: [Previous](@previous)

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
    
    return String(s[String.Index(utf16Offset: (s.count - 1) / 2, in: s)...String.Index(utf16Offset: (s.count) / 2, in: s)])
    /*:
     1. 단어 s의 가운데 글자를 가져오는데 짝수일 경우는 (s.count - 1) / 2 값과 (s.count) / 2의 값이 서로 다르므로 가운데 두글자를 가져온다.
     2. String.Index를 이용해서 문자를 가져오면 Character 타입이므로 String으로 감싸준다.
     */
}

//: [Next](@next)
