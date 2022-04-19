import UIKit

"""
격자판 최대합
"""

let n = 5 // 5 * 5
let arr = [[10, 13, 10, 12, 15], [12, 39, 30, 23, 11], [11, 25, 50, 53, 15], [19, 27, 29, 37, 27], [19, 13, 30, 13, 19]]


for i in arr {
    print(i)
}

var largestNum = Int.min

// 행과 열의 합
for i in 0..<n {
    var sum1 = 0
    var sum2 = 0
    
    for j in 0..<n {
        sum1 += arr[i][j] // 행의 합 // 옆으로 값을 더한다.
        sum2 += arr[j][i] // 열의 합 // 아래로 값을 더한다.
    }
    
    if sum1 > largestNum { // 기존에 저장된 최대합보다 sum1이 더 크다면
        largestNum = sum1 // 최대합에 sum1 값을 저장한다.
    }
    
    if sum2 > largestNum { // 기존에 저장된 최대합보다 sum2가 더 크다면
        largestNum = sum2 // 최대합에 sum2 값을 저장한다.
    }
}

// 대각선의 합
var sum1 = 0
var sum2 = 0

for i in 0..<n {
    sum1 += arr[i][i] // 좌측에서 우측으로 내려오는 대각선 합
    sum2 += arr[i][n - i - 1] // 우측에서 좌측으로 내려오는 대각선 합 // 인덱스가 0부터 시작하므로 1를 빼준다.
}

if sum1 > largestNum { // 기존에 저장된 최대합보다 sum1이 더 크다면
    largestNum = sum1 // 최대합에 sum1 값을 저장한다.
}

if sum2 > largestNum { // 기존에 저장된 최대합보다 sum2가 더 크다면
    largestNum = sum2 // 최대합에 sum2 값을 저장한다.
}

print(largestNum)
