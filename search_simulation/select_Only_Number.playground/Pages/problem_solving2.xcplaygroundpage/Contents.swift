//: [Previous](@previous)

import Foundation

"""
숫자만 추출
"""

let str = "sw0if0t3abc2"

var res = 0 // 추출한 숫자를 저장할 변수

for i in str {
    if Int(String(i)) != nil {
        res = res * 10 + Int(String(i))! // 이미 저장된 값에는 10을 곱해서 자리수를 올려준다. 그 후 새로운 값을 더한다.
    }
}

print(res)

var cnt = 0 // 약수의 개수를 저장할 변수

for i in 1...res {
    if res % i == 0 { // 나눴을 때 0이 된다면 약수이므로
        cnt += 1 // 약수의 개수에 1을 더해준다.
    }
}

print(cnt)

//: [Next](@next)
