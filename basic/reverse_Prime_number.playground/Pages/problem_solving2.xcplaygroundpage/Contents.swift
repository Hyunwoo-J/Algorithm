//: [Previous](@previous)

import Foundation

"""
뒤집은 소수
"""

let numArr = [82, 11, 31, 34200, 1280]

/// 자연수를 뒤집어서 그 뒤집은 수를 리턴합니다.
/// - Parameter x: 뒤집을 자연수
/// - Returns: 뒤집은 수
func reverse(x: Int) -> Int {
    var res = 0 // 뒤집은 수를 저장할 변수
    var target = x // x 값에 새로운 값을 저장해야 하기 때문에 다른 변수를 만들어서 x 값을 저장
    
    while target > 0 { // target이 0보다 클 경우 계속 반복
        let t = target % 10 // target에 저장되어 있는 수를 10으로 나눈 나머지
        res = res * 10 + t // 기존에 저장되어 있는 res 값에 10을 곱하고 나머지를 더한다.
        
        target = target / 10 // target 변수에 현재 target에 저장되어 있는 수를 10으로 나눈 몫을 저장한다.
    }
    
    return res
}

/// 전달받은 수가 소수인지 판별합니다.
/// - Parameter x: 소수인지 판별할 수
/// - Returns: 소수이면 true를, 소수가 아니면 false
func isPrime(x: Int) -> Bool {
    if x == 1 { // 1은 소수가 아니기 때문에 바로 false를 리턴
        return false
    }
    
    for i in stride(from: 2, to: x / 2, by: 1) { // 파라미터로 전달 받은 수에 절반까지 돌면서
        if x % i == 0 { // 만약 나눠진다면
            return false // false를 리턴
        }
    }
    
    return true // 나머지의 경우 true를 리턴(약수가 1과 자기 자신뿐이라는 말)
}

for x in numArr {
    let tmp = reverse(x: x) // tmp에 뒤집은 수를 저장
    if isPrime(x: tmp) { // 뒤집은 수가 소수라면
        print(tmp, terminator: " ") // 출력한다.
    }
}


//: [Next](@next)
