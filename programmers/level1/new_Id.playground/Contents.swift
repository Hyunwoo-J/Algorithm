import UIKit

"""
신규 아이디 추천
"""

/// 입력된 아이디와 유사하면서 규칙에 맞는 아이디를 추천해줍니다.
/// - Parameter new_id: 신규 유저가 입력한 아이디
/// - Returns: 추천하는 아이디
func solution(_ new_id: String) -> String {
    // 1. new_id의 모든 대문자를 소문자로 치환
    var tmp = [Character]()
    var resultArr = new_id.map { Character($0.lowercased()) }
    
    // 2. 지정한 문자를 제외한 모든 문자 제거
    resultArr = resultArr.filter { $0.isLetter || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." }
    
    // 3. 마침표가 연속되게 나오면 하나만 나오게 수정
    for i in resultArr {
        if tmp.last == "." && tmp.last == i {
        } else {
            tmp.append(i)
        }
    }
    
    resultArr = tmp
    
    // 4. 마침표가 처음과 끝에 있다면 제거
    resultArr = resultArr.map { String($0) }.joined().trimmingCharacters(in: ["."]).map { Character(extendedGraphemeClusterLiteral: $0) }
    
    // 5. 빈 문자열이라면 a를 대입
    resultArr = resultArr.count == 0 ? ["a"] : resultArr
    
    // 6. 16자 이상이면 첫 15개 문자만 남김
    resultArr = resultArr.count > 15 ? Array(resultArr[0..<15]) : resultArr
    if resultArr.last == "." {
        resultArr.removeLast()
    }
    
    // 7. 길이가 2자 이하라면 마지막 문자를 new_id의 길이가 3이 될 때까지 반복해서 붙임
    while !resultArr.isEmpty && resultArr.count < 3 {
        resultArr.append(resultArr.last!)
    }

    return resultArr.map { String($0) }.joined()
}
