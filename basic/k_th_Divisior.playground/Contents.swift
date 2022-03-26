import UIKit

"""
* 두 개의 자연수 N과 K가 주어졌을 때, N의 약수들 중 K번째로 작은 수를 출력
* 단, 존재하지 않을 경우 -1을 출력
"""

let fileURL = Bundle.main.url(forResource: "input", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: .utf8)

var arr: Array<Int> = []

for i in content {
    if Int(String(i)) != nil { // 그냥 i는 String.Element 형식으로 Int 형식으로 타입 컨버전이 안되기 때문에 String으로 타입 컨버전 후 Int로 감쌌다.
        arr.append(Int(String(i))!)
    }
}

let n = arr[0]
let k = arr[1]

var cnt = 0

for i in 1...(n + 1) {
    if n % i == 0 { // 약수 찾기
        cnt += 1  // 약수를 찾으면 cnt 변수의 1을 더한다.
    }
    
    if cnt == k { // k번째 수를 찾았을 경우
        print(i) // 출력
        break
    }
    
    if i == n + 1 { // 만약 k번째 수를 찾지 못하고 끝까지 도달했을 경우, -1 출력
        print(-1)
    }
}
