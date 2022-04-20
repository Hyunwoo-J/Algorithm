import UIKit

"""
최댓값과 최솟값
"""


func solution(_ s:String) -> String {
    
    let strArr = s.split(separator: " ") // 공백으로 구분해서 문자열 배열에 넣는다.
    
    var intArr = [Int]() // 빈 Int 배열 생성
    
    for i in strArr {
        intArr.append(Int(i)!) // 문자열 배열의 각 요소의 값을 Int로 변환해서 Int 배열에 넣는다.
    }
    
    var minValue = Int.max // 최댓값을 저장할 변수
    var maxValue = Int.min // 최솟값을 저장할 변수
    
    for i in intArr { // Int 배열을 돌면서
        if minValue > i { // 배열 요소의 값이 최솟값보다 작다면
            minValue = i // minValue 변수에 저장한다.
        }
        
        if maxValue < i { // 배열 요소의 값이 최댓값보다 크다면
            maxValue = i // maxValue 변수에 저장한다.
        }
    }
    
    return "\(minValue) \(maxValue)"
}

let target = ["1 2 3 4", "-1 -2 -3 -4", "-1 -1"]

for i in target {
    print(solution(i))
}
