//: [Previous](@previous)

import Foundation

"""
서울에서 김서방 찾기
"""

/// String형 배열 seoul의 element중 "Kim"의 위치 x를 찾아, "김서방은 x에 있다"는 String을 리턴합니다.
/// - Parameter seoul: 길이 1 이상, 1000 이하인 배열. 원소는 길이 1 이상, 20 이하인 문자열
/// - Returns: "Kim"의 위치
func solution(_ seoul: [String]) -> String {
    let index = seoul.firstIndex(of: "Kim")!
    
    return "김서방은 \(index)에 있다"
}

//: [Next](@next)
