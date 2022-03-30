import UIKit

"""
자릿수의 합을 구하고 그 합이 최대인 자연수 출력
"""

let a = [3872, 13542, 872] // 20, 15, 17

// 자릿수의 합을 구하는 함수
func sum_Of_Digits(_ x: Int) -> Int {
    var sum = 0
    var target = x
    
    while target > 0 {
        sum += target % 10 // 10으로 나눈 나머지를 sum에 더한다. ex) 3872 / 10의 나머지는 2
        target = target / 10 // 그 후 10으로 나눈 몫을 다시 target에 저장한다. -> 3872 / 10 = 387
        // 과정을 계속 반복하다가 0이 되면 종료
    }
    
    return sum // 자릿수의 합을 리턴한다.
}

var max = Int.min // 자릿수 합이 최대인 자연수의 자릿수 합을 저장할 변수 ex) 3872 => 20

var result = 0 // 자릿수 합이 최대인 자연수를 저장할 변수 // ex) 3872

for x in a {
    let total = sum_Of_Digits(x) // 배열을 돌면서 자릿수의 합을 구하는 함수를 실행시킨다.
    
    if total > max { // 자릿수 합이 기존의 저장되어 있는 값보다 크면
        max = total // 그 값을 max 변수에 저장하고
        result = x // result에 자연수를 저장한다.
    }
}

print(result)
