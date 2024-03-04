import UIKit

/*:
 # 요구사항
 1. 각 열에 1부터 9까지의 숫자가 중복 없이 나오기
 2. 각 3x3짜리 사각형(9개)의 숫자가 중복 없이 나오기
 */

// Int 타입만 받을 수 있다.
func sum(numbers: [Int]) -> Int {
  return numbers.reduce(0, +)
}

extension Array where Element: Numeric {
  func sum() -> Element {
    return self.reduce(0, +)
  }
}

private let sampleSudoku = [
  [1, 4, 3, 6, 2, 8, 5, 7, 9],
  [5, 7, 2, 1, 3, 9, 4, 6, 8],
  [9, 8, 6, 7, 5, 4, 2, 3, 1],
  [3, 9, 1, 5, 4, 2, 7, 8, 6],
  [4, 6, 8, 9, 1, 7, 3, 5, 2],
  [7, 2, 5, 8, 6, 3, 9, 1, 4],
  [2, 3, 7, 4, 8, 1, 6, 9, 5],
  [6, 1, 9, 2, 7, 5, 8, 4, 3],
  [8, 5, 4, 3, 9, 5, 1, 2, 7]
]

func validateSudoku(sudoku: [[Int]]) -> Bool {
  
  // 각 열에 1부터 9까지의 숫자가 중복 없이 나오는지 확인하는 로직
  for i in stride(from: 0, to: 9, by: 1) {
    var ch1 = Array(repeating: 0, count: 10) // 10개의 공간 ch[0] 공간은 접근 X -> 숫자가 1부터 시작하기 때문에
    var ch2 = Array(repeating: 0, count: 10)
    
    for j in stride(from: 0, to: 9, by: 1) {
      ch1[sudoku[i][j]] = 1 // 각 인덱스에 맞는 공간에 1을 넣는다. -> 무조건 1을 넣기 때문에 중복된 인덱스의 공간에 1을 넣어도 2가 되는 것이 아니라 1이 된다.
      ch2[sudoku[i][j]] = 1
    }
    
    // 더해서 9가 된다면 중복 숫자가 없는 것이다.
    if ch1.sum() != 9 || ch2.sum() != 9 {
      return false
    }
  }
  
  // 각 3x3짜리 사각형에 1부터 9까지의 숫자가 중복 없이 나오는지 확인하는 로직
  for i in stride(from: 0, to: 3, by: 1) {  // 3번 반복
    for j in stride(from: 0, to: 3, by: 1) {
      var ch3 = Array(repeating: 0, count: 10) // 10개의 공간 ch[0] 공간은 접근 X
      
      for k in stride(from: 0, to: 3, by: 1) {
        for s in stride(from: 0, to: 3, by: 1) {
          ch3[sudoku[i*3+k][j*3+s]] = 1
          // i는 줄 이동
          // k는 오른쪽으로 칸 이동
          // j는 3x3 사각형 안에서 줄 이동
          // k는 3x3 사각형 안에서 칸 이동
        }
        
        // 더해서 9가 된다면 중복 숫자가 없는 것이다.
        if ch3.sum() != 9 {
          return false
        }
      }
    }
  }
  
  return true
}

validateSudoku(sudoku: sampleSudoku)
