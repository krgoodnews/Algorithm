//
//  BaseBallGame.swift
//  algorithm
//
//  Created by Yunsu Guk on 2020/04/26.
//  Copyright © 2020 krgoodnews. All rights reserved.
//

import Foundation

private class BaseBallGame {

    var answerList: [Int]

    func filter(score: Score) {
        answerList.removeAll { answer in
            var strikeCount = 0
            var ballCount = 0

            let setAnswer = Set(String(answer))
            let setNumber = Set(String(score.number))
            ballCount = setAnswer.intersection(setNumber).count

            if answer / 100 == score.number / 100 {
                strikeCount += 1
                ballCount -= 1
            }
            if answer % 100 / 10 == score.number % 100 / 10 {
                strikeCount += 1
                ballCount -= 1
            }
            if answer % 10 == score.number % 10 {
                strikeCount += 1
                ballCount -= 1
            }

            return !(strikeCount == score.strike && ballCount == score.ball)
        }
    }

    init() {
        var numbers = Array(123...987)
        numbers.removeAll {
            let setString = Set(String($0))
            if setString.contains("0") { return true }
            return setString.count != 3
        } // 서로 다른 세자리 숫자
        answerList = numbers
    }
}

private struct Score {
    let number: Int
    let strike: Int
    let ball: Int
}

private func solution(baseball:[[Int]]) -> Int {
    let scores = baseball.map {
        Score(number: $0[0], strike: $0[1], ball: $0[2])
    }

    let game = BaseBallGame()
    print("first answer:", game.answerList.count)
    scores.forEach { score in
        game.filter(score: score)
        print(game.answerList)
    }

    return game.answerList.count
}

//print(solution([[123, 1, 1], [356, 1, 0], [327, 2, 0], [489, 0, 1]]))
