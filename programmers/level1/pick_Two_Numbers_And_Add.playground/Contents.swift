import UIKit

"""
두 개 뽑아서 더하기
"""

func solution(_ numbers:[Int]) -> [Int] {
    var arr: Array<Int> = [] // 더해서 만들 수 있는 수를 저장할 빈 배열
    
    for i in 0..<numbers.count { // 처음 뽑을 수의 범위
        for j in (i + 1)..<numbers.count { // 두 번째로 뽑을 수의 범위(서로 다른 인덱스가 조건이라 i에 1을 더해준다.)
            arr.append(numbers[i] + numbers[j]) // 각각의 인덱스에 있는 값을 더해서 arr 배열에 저장
        }
    }
    
    let setArr = Set(arr).sorted() // 집합으로 중복 값을 제거해준 후 정렬
    
    return setArr
}

let a = [2,1,3,4,1]
let b = [5,0,2,7]

solution(a) // 2, 3, 4, 5, 6, 7
solution(b) // 2, 5, 7, 9, 12

/*
 처음에 numbers.count - 1을 upperBound로 설정하고 Closed Range Operator를 사용해서 범위를 설정했는데 크래시가 났다.
 첫 번째 반복문은 상관없는데 두 번째 반복문에서 lowerBound가 i + 1이라서 upperBound가 더 낮은 문제가 발생하기 때문이었다.
 */
