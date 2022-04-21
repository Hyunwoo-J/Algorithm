import UIKit

"""
프린터
"""

/// 인쇄를 요청한 문서가 몇 번째로 인쇄되는지를 return 합니다.
/// - Parameters:
///   - priorities: 인쇄 대기목록
///   - location: 인쇄를 요청한 문서가 현재 대기목록의 어떤 위치에 있는지를 알려주는 location
/// - Returns: 인쇄를 요청한 문서의 위치
func solution(_ priorities: [Int], _ location: Int) -> Int {
    var priority: [(Int, Int)] = priorities.enumerated().map { ($0.offset, $0.element) } // enumerated 메소드를 이용하면 연속하는 정수와 배열의 저장된 값을 반환받을 수 있다.
    // (0, priorities[0])
    // (1, priorities[1])
    // (2, priorities[2])
    
    var printing = 0 // 인쇄를 요청한 문서가 몇 번째로 인쇄되는지를 저장할 변수

    while true {
        let pri: (Int, Int) = priority.remove(at: 0) // 처음: (0, 1)
        
        if !priority.filter({ pri.1 < $0.1 }).isEmpty { // priority 배열의 최댓값이 pri 상수에 저장되면 빈 배열이 리턴된다.
            priority.append(pri) // filter에서 리턴하는 배열이 빈 배열이 아니라면 priority 배열에 뒤에 pri를 추가해준다.
            print(priority)
        } else if pri.0 == location { // pri.0에 저장된 값과 인쇄를 요청한 문서의 위치 값이 같다면
            printing = priorities.count - priority.count // 파라미터로 받은 배열의 count에서 현재 priority 배열에 남아 있는 요소의 수를 빼준다.
            print(priority.count, priority)
            break
        }
        
        /*
         pri 상숫값에 최댓값이 저장되면 첫 번째 if 블록에 안 걸리고 while 문이 반복된다. (이유는 pri.1의 값보다 큰 priority 배열의 요소를 filtering 하는데 최댓값이 저장되면 filtering 할 값이 없기 때문이다.)
         remove 메소드를 이용해서 계속 지우다가 인쇄를 요청한 문서의 위치인 location 값과 같은 값을 발견하게 된다.
         그때, priorities에서 priority(remove로 지우고 현재 남아 있는)의 count를 빼주면 몇 번째로 인쇄되는지 알 수 있다.
         (예를 들어, priorities의 count가 6이고 찾는 값이 현재 5번째에 있다면 remove 메소드로 찾고 있는 값의 위치까지 지워지고 priority의 count를 세므로 6 - 1 = 5 => 5번째가 된다.
         (지워진 값이 pri에 저장된다.)
         */
    }

    
    return printing
}

var priorities = [1, 1, 9, 1, 1, 1]
solution(priorities, 0)

var priority: [(Int, Int)] = priorities.enumerated().map { ($0.offset, $0.element) }
let pri: (Int, Int) = priority.remove(at: 1)

let a = priority.filter({ (lhs, rhs) in
    return pri.1 < rhs
})

print(a)
