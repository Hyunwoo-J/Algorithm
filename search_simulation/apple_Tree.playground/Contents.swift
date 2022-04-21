import UIKit

"""
사과나무(다이아몬드)
"""

let n = 5

let arr = [[10, 13, 10, 12, 15], [12, 39, 30, 23, 11], [11, 25, 50, 53, 15], [19, 27, 29, 37, 27], [19, 13, 30, 13, 19]]


var res = 0

var startNumber = n / 2 // 5를 2로 나눈 몫 == 2 ==> 배열의 인덱스는 0부터 시작하므로 5개의 자연수가 있다면 2는 0, 1, 2로 세 번째 값을 가리킨다.
var endNumber = n / 2

for i in 0..<n { // 0 ~ 4 => 인덱스는 0부터 시작하기 때문에
    for j in stride(from: startNumber, to: endNumber + 1, by: 1) { // endNumber에 1을 더해주는 이유는 from 값과 to 값이 같으면 반복문이 아예 돌지 않기 때문이다.
        res += arr[i][j]
        // arr[0][2]
        // arr[1][1], arr[1][2], arr[1][3]
        // arr[2][0], arr[2][1], arr[2][2], arr[2][3], arr[2][4], arr[2][5] => 여기서부터 i가 2로 n/2보다 크므로 시작 값은 1씩 더해주고 종료 값은 1씩 빼준다.
        // arr[3][1], arr[3][2], arr[3][3]
        // arr[4][2]
    }
    
    if i < (n / 2) {
        startNumber -= 1
        endNumber += 1
    } else { // n/2의 몫이 i보다 같거나 크다는 것은 다이아몬드 모양의 가장 두꺼운 중앙 부분을 지났다는 말
        startNumber += 1
        endNumber -= 1
    }
}

print(res)
