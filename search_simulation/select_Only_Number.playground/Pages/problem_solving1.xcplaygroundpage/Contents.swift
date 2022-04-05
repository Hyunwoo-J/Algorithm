import UIKit

"""
숫자만 추출
"""

let str = "sw0if0t3abc2"
var intStr = ""

for i in str {
    if Int(String(i)) != nil { // Int로 타입 컨버전 된다면
        intStr += String(i) // 빈 문자열에 추가한다.
    }
}

if let number = Int(intStr) { // Int로 타입 컨버전 + 옵셔널 바인딩 후
    print(number) // 출력한다.
    
    var cnt = 0 // 약수의 개수를 저장할 변수
    
    for i in 1...number {
        if number % i == 0 { // 나눴을 때 0이 된다면 약수이므로
            cnt += 1 // 약수의 개수에 1을 더해준다.
        }
    }
    
    print(cnt)
}

