//: [Previous](@previous)

import Foundation

"""
자릿수의 합을 구하고 그 합이 최대인 자연수 출력
"""

let a = [3872, 13542, 872] // 20, 15, 17

// 자릿수의 합을 구하는 함수
func sum_Of_Digits(_ x: Int) -> Int {
    var sum = 0
    
    for i in String(x) { // 문자열로 타입 컨버전해서 문자 하나하나를 꺼낸다.
        if let targetNumber = Int(String(i)) { // 옵셔널 바인딩에 성공해서 targetNumber에 Int로 타입 컨버전한 i값이 들어간다면
            sum += targetNumber // sum 변수에 그 값을 더한다.
        }
    }
    
    return sum // 자릿수의 합을 리턴한다.
}

var max = Int.min // 자릿수 합이 최대인 자연수의 자릿수 합을 저장할 변수 ex) 3872 => 20

var result = 0 // 자릿수 합이 최대인 자연수를 저장할 변수 // ex) 3872

for x in a {
    let total = sum_Of_Digits(x) // 배열을 돌면서 자릿수의 합을 구하는 함수를 실행시킨다.
    
    if total > max { // 자릿수 합이 기존의 저장되어 있는 값보다 크면
        max = total // 그 값을 max 변수에 저장하고
        result = x // result에 자연수를 저장한다.
    }
}

print(result)


//: [Next](@next)
