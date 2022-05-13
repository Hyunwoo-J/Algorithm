//: [Previous](@previous)

import Foundation

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
    let lowerS = s.lowercased() // 대소문자를 구별하지 않기 때문에 모두 소문자로 바꿔준다.
    
    return lowerS.components(separatedBy: "p").count == lowerS.components(separatedBy: "y").count
}

let str = "pPoooyY".lowercased()

let a = str.components(separatedBy: "p") // 구분 기호로 사용된 문자는 빈 문자열로 바뀌어서 배열에 저장된다. 따라서, ["", "", "oooyy"]로 출력된다.
let b = str.components(separatedBy: "y") // ["ppooo", "", ""]
print(a)
print(b)

//: [Next](@next)
