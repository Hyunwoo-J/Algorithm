import UIKit

"""
2016년
"""

/// 2016년에 해당 날짜의 요일을 구합니다.
/// - Parameters:
///   - a: 월
///   - b: 일
/// - Returns: 해당 요일
func solution(_ a: Int, _ b: Int) -> String {
    let days = ["SUN","MON","TUE","WED","THU","FRI","SAT"]
    let months = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    var totalDays = 5
    
    totalDays += months[0..<a-1].reduce(0, +) + b - 1 // 인덱스는 0부터 시작하므로 1을 빼준다.
    
    return days[totalDays % 7]
}
