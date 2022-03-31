import UIKit

"""
소수의 개수 출력
"""

let a = 12

var primeNumber_Arr = [Int]() // 소수를 저장할 배열

for i in 2...a { // 2부터 주어진 수 사이의 값을 1씩 증가시키며 차례대로 꺼낸다.
    var arr = [Int]()
    
    for j in 1...i {
        if i % j == 0 { // 만약, 나눠서 나머지가 0이라면
            arr.append(j) // 임시 배열로 만든 arr 배열에 추가한다.
        }
    }
    
    if arr.count == 2 { // 임시 배열의 들어있는 값이 2개라면(1과 자기 자신만을 약수로 가진다는 뜻)
        primeNumber_Arr.append(i) // 소수를 primeNumber_Arr에 저장한다.
    }
}

print("소수의 개수: ", primeNumber_Arr.count)

print("소수: ", terminator: "")
for i in primeNumber_Arr {
    if i == primeNumber_Arr[primeNumber_Arr.count - 1] { // 옆으로 쭉 출력하고 싶은데 끝의 값 뒤에 ,를 찍고 싶지 않아서 추가한 if문
        print(i, terminator: "")
        continue
    }
    
    print(i, terminator: ", ")
}
