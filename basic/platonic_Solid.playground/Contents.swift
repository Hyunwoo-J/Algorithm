import UIKit

"""
두 개의 정다면체의 주사위를 던져서 나올 수 있는 눈의 합 중 가장 확률이 높은 숫자를 출력
* 정다면체는 정사면체, 정육면체, 정팔면체, 정십이면체, 정이십면체 중 하나
* 정답이 여러 개일 경우 오름차순 출력
"""

let a = 12
let b = 20

var cntArr: Array<Int> = []

for _ in 1...40 { // 배열에 임시로 수를 채운다. (적당히 많은 수로)
    cntArr.append(0)
}

var max = Int.min // 가장 많이 나온 수의 출현 개수를 저장할 변수(ex. 5가 20번 나오면 20)

// 전체를 하나씩 조합하면서 나온 수의 개수를 배열의 자리를 통해 카운팅
for i in stride(from: 1, to: a + 1, by: 1) {
    for j in stride(from: 1, to: b + 1, by: 1) {
        cntArr[i + j] += 1
    }
}

// 가장 많이 나온 수 찾기
for i in stride(from: 1, to: a + b + 1, by: 1) {
    if cntArr[i] > max {
        max = cntArr[i]
    }
}

// 정답이 여러 개일 경우 오름차순 출력
for i in stride(from: 1, to: a + b + 1, by: 1) {
    if cntArr[i] == max {
        print(i, terminator: " ")
    }
}
