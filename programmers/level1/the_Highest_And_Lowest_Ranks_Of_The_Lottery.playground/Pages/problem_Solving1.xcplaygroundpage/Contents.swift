import UIKit

"""
로또의 최고 순위와 최저 순위
"""

/// 당첨 가능한 최고 순위와 최저 순위를 차례대로 배열에 담아서 return 합니다.
/// - Parameters:
///   - lottos: 구매한 로또 번호를 담은 배열
///   - win_nums: 당첨 번호를 담은 배열
/// - Returns: 최고 순위와 최저 순위를 담은 배열
func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var cnt = 0 // 일치하는 숫자의 개수
    
    for i in lottos {
        for j in win_nums {
            if i == j { // 당첨 번호와 숫자가 일치하면
                cnt += 1 // 일치하는 숫자의 개수를 저장한 변수의 값을 1 증가시킨다.
            }
        }
    }
    
    var zeroCnt = 0 // 0의 개수
    
    for i in lottos {
        if i == 0 {
            zeroCnt += 1
        }
    }
    
    var rankArr: Array<Int> = []
    
    let maxRank = cnt + zeroCnt // 최고 순위
    let minRank = cnt // 최저 순위
    
    let maxMinRankArr = [maxRank, minRank]
    
    for i in maxMinRankArr { // 일치하는 번호의 개수에 따라 순위를 저장한다.
        switch i {
        case 6:
            rankArr.append(1)
        case 5:
            rankArr.append(2)
        case 4:
            rankArr.append(3)
        case 3:
            rankArr.append(4)
        case 2:
            rankArr.append(5)
        case 1:
            rankArr.append(6)
        default:
            rankArr.append(6)
        }
    }
    
    
    return rankArr
}
