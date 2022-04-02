import UIKit

"""
점수 계산
"""

var arr = [0, 0, 1, 1, 1, 1, 0, 1, 1, 0] // 1은 맞은 문제, 0은 틀린 문제

var score = 0 // 총 점수를 저장할 변수
var cnt = 0 // 가중치

for i in arr {
    if i == 1 { // 문제를 맞췄을 경우
        cnt += 1 // 가중치에 1을 더하고
        score += cnt // 그 값을 점수에 더한다.
    } else {
        cnt = 0 // 만약 틀렸을 경우 가중치를 0으로 초기화한다.
    }
}

print(score)
