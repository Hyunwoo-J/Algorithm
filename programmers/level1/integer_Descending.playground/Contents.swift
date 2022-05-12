import UIKit

"""
정수 내림차순으로 배치하기
"""

/// 정수 n의 각 자릿수를 큰 것부터 작은 순으로 정렬한 새로운 정수를 리턴합니다.
/// - Parameter n: 1이상 8000000000 이하인 자연수
/// - Returns: 큰 것부터 작은 순으로 정렬한 새로운 정수
func solution(_ n: Int64) -> Int64 {
    var intArr = String(n).map { Int(String($0))! }
    
    for i in 1..<intArr.count {
        var loc = i - 1 // 현재 위치의 값의 앞에 있는 값의 위치를 나타낸다.(while문에서 -1씩 줄어듬) ===> intArr[0...(i - 1)]은 이미 정렬된 상태
        var newItem = intArr[i] // 현재 위치의 값

        while loc >= 0 && newItem > intArr[loc] { // ex) n이 118372이고 i가 2일 경우, loc = 1, newItem = 8, intArr[loc] = 1
            intArr[loc + 1] = intArr[loc] // intArr[loc + 1] -> 012 3번째
            loc -= 1 // 마지막에 loc는 -1
        }

        intArr[loc + 1] = newItem // loc가 -1이라 +1을 더하면 0 -> 가장 첫번째 위치에 newItem을 넣는다.
    }

    var str = ""

    for i in intArr {
        str += String(i)
    }

    return Int64(str)!
}

/*:
 참고자료: 쉽게 배우는 자료구조 with 파이썬에서 삽입 정렬 파트
 */
