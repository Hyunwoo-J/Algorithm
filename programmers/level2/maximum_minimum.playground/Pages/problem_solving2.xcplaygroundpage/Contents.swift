//: [Previous](@previous)

import Foundation

"""
다른 분 풀이
"""


func solution(_ s:String) -> String {
    let arr = s.split(separator: " ").map { Int($0)! } // 공백으로 구분한 요소를 담은 Substring 배열을 받고 그 배열의 각 요소를 map 메소드를 이용해서 Int로 변환하여 Int 배열로 반환받는다.
    
    return "\(arr.min()!) \(arr.max()!)" // 배열의 최솟값과 최댓값을 리턴한다.
}

let target = ["1 2 3 4", "-1 -2 -3 -4", "-1 -1"]

for i in target {
    print(solution(i))
}


//: [Next](@next)
