import UIKit

"""
주사위 게임
"""

let arr = [[7, 3, 3], [5, 5, 3], [6, 2, 5]]

var res = 0 // 가장 높은 상금에 당첨된 사람의 상금을 저장할 변수

for i in arr {
    
    var i = i // i가 let으로 선언되어 있어서 정렬이 불가능하므로 새로운 변수에 저장
    
    i.sort() // 정렬 => 전부 다를 경우 가장 큰 눈을 찾아야 하기 때문에
    
    var money = 0 // 상금을 저장할 변수
    
    let a = i[0]
    let b = i[1]
    let c = i[2]
    
    if a == b && b == c { // 모든 눈이 같을 경우
        money = 10000 + (a * 1000)
    } else if a == b || a == c { // 2개의 눈만 같을 경우
        money = 1000 + (a * 100)
    } else if b == c { // // 2개의 눈만 같을 경우
        money = 1000 + (b * 100)
    } else { // 모든 눈이 다를 경우
        money = c * 100
    }
    
    if money > res { // 현재 저장되어 있는 금액보다 더 높은 금액이 나온다면
        res = money // res 변수에 저장한다.
    }
}

print(res)
