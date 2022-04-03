import UIKit

"""
회문 문자열 검사
"""

let arr = ["lssL", "water", "txt", "good", "RxXr"]

var upperArr: Array<String> = [] // 대문자 문자열을 저장할 빈 배열

for i in arr {
    upperArr.append(i.uppercased()) // 배열을 돌면서 각각의 문자열을 모두 대문자로 바꾼다.
}

var cnt = 0 // 반복 횟수를 저장할 변수

for j in upperArr {
    cnt += 1
    
    var strArr: Array<String> = []
    
    for k in j {
        strArr.append(String(k)) // 문자열을 문자로 나눠서 배열에 저장한다.
    }
    
    for l in 0...(strArr.count / 2) { // 두 개씩 비교할 것이기 때문에 배열 길이의 절반만 반복한다.
        if strArr[l] != strArr.reversed()[l] { // 대응되는 문자끼리 비교해서 한 쌍이라도 같지 않다면
            print("#\(cnt) NO") // NO를 출력
            break
        } else {
            print("#\(cnt) YES") // 다 같다면 YES를 출력
            break
        }
    }
}
