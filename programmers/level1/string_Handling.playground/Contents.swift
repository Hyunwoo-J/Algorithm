import UIKit

"""
문자열 다루기 기본
"""

func solution(_ s:String) -> Bool {
    
    if s.count == 4 || s.count == 6 { // 문자열의 길이가 4 혹은 6이면서
        if let _ = Int(s) { // 숫자로만 구성돼 있다면
            return true // true를 리턴
        }
    }
    
    return false // 나머지의 경우에는 false를 리턴
}
