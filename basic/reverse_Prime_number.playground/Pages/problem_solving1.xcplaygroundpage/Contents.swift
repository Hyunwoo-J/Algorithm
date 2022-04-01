import UIKit

"""
뒤집은 소수
"""

let numArr = [82, 11, 31, 34200, 1280]

/// 자연수를 뒤집어서 그 뒤집은 수를 리턴합니다.
/// - Parameter x: 뒤집을 자연수
/// - Returns:
/// 성공했을 경우, 뒤집은 수
/// 실패했을 경우, nil
func reverse(x: Int) -> Int? {
    let target = String(x)
    
    var strArr: Array<String> = []
    
    for i in target {
        strArr.insert(String(i), at: 0) // 문자열을 돌면서 각각의 문자를 strArr 배열에 맨 앞에 넣는다.
    }
    
    var targetStr = ""
    
    for i in strArr {
        targetStr += i // strArr 배열에 있는 값들을 하나의 문자열로 붙인다.
    }
    
    if let targetInt = Int(targetStr) { // Int로 타입 컨버전한 값이 옵셔널 바인딩이 된다면
        return targetInt // 넌옵셔널 타입인 targetInt를 리턴한다.
    }
    
    return nil // 실패할 경우 nil을 리턴
}

var reverse_Number = [Int]() // 뒤집은 수들을 저장할 배열

for i in numArr {
    if let target = reverse(x: i) { // 자연수를 뒤집는데 성공한다면
        reverse_Number.append(target) // reverse_Number 배열에 값을 넣는다.
    }
}

/// 전달받은 수가 소수인지 판별합니다.
/// - Parameter x: 소수인지 판별할 수
/// - Returns: 소수이면 true를, 소수가 아니면 false
func isPrime(x: Int) -> Bool {
    var arr: [Int] = []
    
    for i in 1...x {
        if x % i == 0 { // 나머지가 0이라는 말은 그 수가 자신의 약수라는 뜻
            arr.append(i)
        }
    }
    
    if arr.count == 2 { // 1과 자기 자신만이 저장되어 있다면
        return true // true를 리턴한다.
    }
    
    return false // 나머지의 경우는 false를 리턴한다.
}

for i in reverse_Number { // 배열에 저장된 값을 하나하나 돌면서
    if isPrime(x: i) { // 소수인지 판별하고
        print(i, terminator: " ") // 소수라면 출력한다.
    }
}
 
