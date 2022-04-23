import UIKit

"""
봉우리
"""

let n = 5
var arr = [[5, 3, 7, 2, 3], [3, 7, 1, 6, 1], [7, 2, 5, 3, 4], [4, 3, 6, 4, 1], [8, 7, 3, 5, 2]]

var zeroArr: Array<Int> = []
for _ in 0..<n {
    zeroArr.append(0)
}
arr.insert(zeroArr, at: 0)
arr.append(zeroArr)

for i in 0..<arr.count {
    arr[i].insert(0, at: 0)
    arr[i].append(0)
    
}

for i in arr {
    print(i)
}
"""
[0, 0, 0, 0, 0, 0, 0]
[0, 5, 3, 7, 2, 3, 0]
[0, 3, 7, 1, 6, 1, 0]
[0, 7, 2, 5, 3, 4, 0]
[0, 4, 3, 6, 4, 1, 0]
[0, 8, 7, 3, 5, 2, 0]
[0, 0, 0, 0, 0, 0, 0]
"""



var cnt = 0

let dx = [-1, 0, 1, 0] // 행 ex) -1이면 현재 위치에서 위쪽에 있는 값
let dy = [0, 1, 0, -1] // 열 ex) -1이면 현재 위치에서 왼쪽에 있는 값

for i in 1...n {
    for j in 1...n {
        var flag = 1 // 현재 숫자의 상하좌우 숫자보다 크면 1이라는 값이 유지되고 주위에 값 중 하나라도 현재 숫자보다 크다면 0을 할당한다.
        
        for k in 0..<4 {
            let nx = i + dx[k] // 현재 위치에서 상하로 이동 ex) dx[k] 값이 -1이면 현재 위치에서 위쪽에 있는 값
            let ny = j + dy[k] // 현재 위치에서 좌우로 이동 ex) dy[k] 값이 -1이면 현재 위치에서 왼쪽에 있는 값
            
            if arr[nx][ny] >= arr[i][j] { // 현재 숫자의 주위에 값 중 하나라도 현재 숫자보다 크다면
                flag = 0 // 0을 할당한다. (봉우리 지역이 아니라는 것)
                break
            }
        }
        
        if flag == 1 { // 현재 숫자의 상하좌우 숫자보다 크면(for문 안에 if문에 걸리지 않은 것)(봉우리 지역이라는 것)
            cnt += 1 // cnt 값에 1을 더한다.
        }
    }
}

print(cnt)
