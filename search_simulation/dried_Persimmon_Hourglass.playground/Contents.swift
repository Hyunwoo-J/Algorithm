import UIKit


let n = 5
var arr = [[10, 13, 10, 12, 15], [12, 39, 30, 23, 11], [11, 25, 50, 53, 15], [19, 27, 29, 37, 27], [19, 13, 30, 13, 19]]

/// 배열에서 원하는 행을 지정한 방향으로 회전하는 격자수만큼 움직입니다.
/// - Parameters:
///   - h: 행번호
///   - t: 방향. 방향이 0이면 왼쪽으로 회전, 1이면 오른쪽으로 회전합니다.
///   - k: 회전하는 격자의 수
func moveArray(h: Int, t: Int, k: Int) {
    if t == 0 {
        for _ in 0..<k {
            arr[h - 1].append(arr[h - 1].removeFirst()) // 배열의 첫 번째 요소를 지운 후 맨 뒤에 넣어준다.
        }
    } else {
        for _ in 0..<k {
            arr[h - 1].insert(arr[h - 1].removeLast(), at: 0) // 배열의 마지막 요소를 지운 후 맨 앞에 넣어준다.
        }
    }
}

moveArray(h: 2, t: 0, k: 3)
moveArray(h: 5, t: 1, k: 2)
moveArray(h: 3, t: 1, k: 4)

for i in arr {
    print(i)
}

var startNumber = 0
var endNumber = n - 1
var res = 0

for i in 0..<n {
    for j in stride(from: startNumber, to: endNumber + 1, by: 1) {
        res += arr[i][j]
        // arr[0][0], arr[0][1], arr[0][2], arr[0][3], arr[0][[4]
        // arr[1][1], arr[1][2], arr[1][3]
        // arr[2][3] => 여기서부터 i가 2로 n/2의 몫보다 크므로 시작 값은 1씩 빼주고 종료 값은 1씩 더해준다. (사과나무 문제와 반대)
        // arr[3][1], arr[3][2], arr[3][3]
        // arr[4][0], arr[4][1], arr[4][2], arr[4][3], arr[4][[4]
    }
    
    if i < (n / 2) {
        startNumber += 1
        endNumber -= 1
    } else { // n/2의 몫보다 i가 크다는 것은 모래시계 모양에서 가장 얇은 부분을 지났다는 말
        startNumber -= 1
        endNumber += 1
    }
}

print(res)
