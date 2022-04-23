//: [Previous](@previous)

import Foundation

"""
로또의 최고 순위와 최저 순위
"""

/// 당첨 가능한 최고 순위와 최저 순위를 차례대로 배열에 담아서 return 합니다.
/// - Parameters:
///   - lottos: 구매한 로또 번호를 담은 배열
///   - win_nums: 당첨 번호를 담은 배열
/// - Returns: 최고 순위와 최저 순위를 담은 배열
func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {

    let zeroCnt = lottos.filter { $0 == 0 }.count // lottos 배열의 0 개수를 계산해서 저장
    let winCnt = win_nums.filter { lottos.contains($0) }.count // 당첨 숫자와 같은 숫자가 몇 개인지 계산해서 저장
    
    let minRank = min(7 - winCnt - zeroCnt, 6) // 만약, 맞춘 개수가 하나도 없다면 7과 6을 비교해서 6을 저장한다.
    let maxRank = min(7 - winCnt, 6)
    
    return [minRank, maxRank]
}

//: [Next](@next)
