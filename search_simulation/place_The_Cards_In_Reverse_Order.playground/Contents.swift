import UIKit

"""
카드 역배치
"""

var arr: Array<Int> = []

for i in 0...20 {
    arr.append(i)
}

/// a, b 사이에 있는 값을 역순으로 배치합니다.
/// - Parameters:
///   - a: 위치 a
///   - b: 위치 b
func reverseCard(a: Int, b: Int) {
    for i in 0..<((b - a + 1) / 2) {
        var num = 0
        num = arr[a + i]
        arr[a + i] = arr[b - i] // 해당 범위에서 서로 대응되는 값끼리 자리 변경
        arr[b - i] = num // 해당 범위에서 서로 대응되는 값끼리 자리 변경
    }
}

reverseCard(a: 5, b: 10)
reverseCard(a: 9, b: 13)
reverseCard(a: 1, b: 2)
reverseCard(a: 3, b: 4)
reverseCard(a: 5, b: 6)
reverseCard(a: 1, b: 2)
reverseCard(a: 3, b: 4)
reverseCard(a: 5, b: 6)
reverseCard(a: 1, b: 20)
reverseCard(a: 1, b: 20)

arr.remove(at: 0)
print(arr)
