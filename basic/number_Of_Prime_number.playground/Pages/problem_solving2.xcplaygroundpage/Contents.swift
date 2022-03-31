//: [Previous](@previous)


import Foundation

"""
소수의 개수 출력
* 에라토스테네스의 체 이용
"""

let n = 5

var primeNumber_Arr = [Int]() // 소수를 저장할 배열

for _ in 1...(n + 1) { // 인덱스는 0부터 시작하기 때문에 n + 1의 개수만큼 추가해준다.
    primeNumber_Arr.append(0)
}

var cnt = 0 // 소수의 개수를 저장할 변수

for i in 2...n { // i = 2, 3, 4, 5
    if primeNumber_Arr[i] == 0 { // 처음엔 무조건 true => 다 0으로 초기화되어 있기 떄문에
        cnt += 1 // 해당 자리가 0이면 1을 더해준다. => 소수라는 의미
        for j in stride(from: i, to: n + 1, by: i) { // 2부터 6까지 2씩 증가(6포함 x) => 2 4 // 3 // 5
            primeNumber_Arr[j] = 1 // 2, 4번째 인덱스 1, 3번쨰 인덱스 1, 4는 패스, 5번째 인덱스 1 => 2일 때 + 1, 3일 때 + 1, 5일 때 + 1
        }
    }
}

print("소수의 개수: ", cnt)


//: [Next](@next)
