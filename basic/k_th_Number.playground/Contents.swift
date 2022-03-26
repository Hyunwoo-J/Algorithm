import UIKit

"""
N개의 숫자로 이루어진 숫자열이 주어지면 해당 숫자열중에서 s번째부터 e번째 까지의 수를 오름차순 정렬했을 때
k번째로 나타는 숫자를 출력
"""

let case1 = [2, 4, 13, 5, 8, 17]

func k_Number(_ caseArr: [Int], s: Int, e: Int, k: Int) {
    let a = caseArr
    
    var targetArrSlice = a[(s - 1)...(e - 1)] // 0...2
    targetArrSlice.sort()
    
    print(type(of: targetArrSlice)) // ArraySlice<Int> 타입
    
    let targetArr = Array(targetArrSlice)
    
    print(targetArr[k - 1])
}

k_Number(case1, s: 1, e: 3, k: 2) // 1 ~ 3번째 수 중 2번째 수
// 2 4 13
// 2번째 수: 4

