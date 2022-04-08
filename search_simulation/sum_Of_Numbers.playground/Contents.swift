import UIKit

"""
수의 합
"""

let n = 8
let m = 3 // 목푯값

let a = [1, 2, 1, 3, 1, 1, 1, 5]
var lt = 0 // 인덱스 번호를 가리키는 변수
var rt = 1 // 인덱스 번호를 가리키는 변수
var tot = a[0] // 연속 부분의 합(lt에서 rt 바로 전 값까지의 합)
var cnt = 0 // tnt 값이 m 값이 되는 경우의 수를 셀 변수

while true {
    if tot < m { // 목푯값보다 작고
        if rt < n { // rt 값이 배열의 전체 요소의 개수보다 작다면
            tot += a[rt] // tot 값에 rt 인덱스에 있는 값을 더하고
            rt += 1 // rt 값을 1 증가시킨다.
        } else { // rt 값이 배열의 전체 요소의 개수와 같거나 크다면(배열 마지막 값의 인덱스 다음 인덱스를 가리키고 있다는 말 => 배열 인덱스는 0부터 시작하기 때문에)
            break // 반복문을 종료시킨다.
        }
    } else if tot == m { // 목푯값과 같다면
        cnt += 1 // cnt 값을 1 증가시키고
        tot -= a[lt] // tot 값에 lt 인덱스에 있는 값을 빼고
        lt += 1 // lt 값을 1 증가시킨다.
    } else { // 그 외(목푯값보다 크다면)
        tot -= a[lt] // tot 값에서 lt 인덱스에 있는 값을 빼고
        lt += 1 // lt 값을 1 증가시킨다.
    } // 만약 배열의 마지막 값이 목표값보다 크더라도 마지막에는 lt 인덱스가 가리키는 값을 빼기 때문에 결국 break문에 걸린다.
}

print(cnt)
