import UIKit

"""
주어진 값에서 가장 작은 값을 출력해라
"""

let arr = [2, 4, 6, 3, 2, 1, 2]
var arrMin = Int.max // 작은 값을 찾을 것이기 때문에 임시로 큰 값을 저장

for i in stride(from: 0, to: arr.count, by: 1) { // 배열의 전체 요소의 개수만큼 반복한다.
    if arr[i] < arrMin { // 그 자리에 해당하는 배열값과 현재 저장되어 있는 최솟값을 비교해서 배열에 있는 값이 더 작다면
        arrMin = arr[i] // arrMin 변수에 저장한다.
    }
}

print(arrMin)

// 다른 방법
for i in arr { // 배열에 저장되어 있는 값을 하나씩 꺼내며 반복한다.
    if i < arrMin { // 현재 저장되어 있는 최솟값보다 더 작은 값이 있다면
        arrMin = i // arrMin 변수에 저장한다.
    }
}

print(arrMin)
