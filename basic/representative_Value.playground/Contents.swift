import UIKit

"""
주어진 수의 평균과 평균과 가장 가까운 값이 몇 번째인지 출력
* 가장 가까운 값이 여러 개 나올 경우 값이 높은 값이 우선이고 값이 같다면 앞에 있는 값이 우선
* 평균은 소수 첫째 자리에서 반올림
"""

let n = 8 // 배열 원소의 총 개수
let a = [32, 36, 45, 65, 84, 54, 49, 51] // 값

var sum = 0 // 합을 저장할 변수

for i in a {
    sum += i
}

let avg_Double = round(Double(sum) / Double(n)) // Int 형식으로 계산하면 소수점 자리수가 생략되므로 Double로 타입 컨버전해서 계산
let avg = Int(avg_Double) // 평균

var min = Int.max // 평균과 가장 가까운 값을 판단할 변수(낮을수록 가까운 것)
var value = 0 // 가장 가까운 값
var resultNumber = 0 // 가장 가까운 값이 몇 번째 값인지 저장할 변수
var idx = 0 // 인덱스

for x in a {
    idx += 1
    
    let tmp = abs(x - avg) // 절대값
    
    if tmp < min { // 평균과의 차이가 현재 저장되어 있는 값보다 작다면
        min = tmp // 평균과의 차이를 min 변수에 저장
        value = x // 해당하는 값은 value 변수에 저장
        resultNumber = idx // 해당하는 위치는 resultNumber 변수에 저장
    } else if tmp == min { // 만약 평균과의 차이가 동일하다면
        if x > value { // 값이 더 큰 값을
            value = x // 저장한다.
            resultNumber = idx
        }
    }
}

print("평균: ", avg)
print("가장 가까운 값의 위치: ", resultNumber)
