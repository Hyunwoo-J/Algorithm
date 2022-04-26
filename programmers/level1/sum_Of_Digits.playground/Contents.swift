import UIKit

"""
자릿수 더하기
"""

/// 각 자릿수의 합을 구해서 return 합니다.
/// - Parameter n: 자연수
/// - Returns: 자릿수의 합
func solution(_ n:Int) -> Int {
    var answer: Int = 0
    let str = String(n)
    
    let strArr = str.map { String($0) } // 각각의 문자로 분리하여 문자열 배열에 넣는다.
    
    for i in strArr { // 배열을 돌면서
        answer += Int(i)! // 각각의 문자를 Int로 바꿔서 answer 변수에 더한다.
    }
    
    return answer
}

solution(123)
solution(987)
