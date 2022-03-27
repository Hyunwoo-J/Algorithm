import UIKit

"""
배열에서 3가지 수를 뽑아 만들 수 있는 경우의 수를 모두 기록한다.
그 중 K번째 큰 수를 찾는다. (중복된 수는 세지 않는다.)
"""


let n = 7 // 배열의 전체 요소의 개수
let k = 4 // 4번째로 큰 수

let a = [12, 34, 23, 53, 42, 13, 24] // 주어진 배열

var res: Set<Int> = [] // 중복을 제거하기 위해 Set 사용

for i in stride(from: 0, to: a.count, by: 1) {
    for j in stride(from: i + 1, to: a.count, by: 1) {
        for m in stride(from: j + 1, to: a.count, by: 1) {
            res.insert(a[i] + a[j] + a[m]) // 3가지 수를 뽑아 만들 수 있는 모든 경우의 수를 저장
        }
    }
}

var resArr = Array(res) // 정렬을 위해 배열로 변환
resArr.sort()
resArr.reverse() // 큰 수부터이므로 내림차순 정렬

print(resArr[k - 1]) // k번째 수 -> k - 1(인덱스가 0부터 시작하므로)
