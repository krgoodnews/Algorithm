//
//  Printer.swift
//  algorithm
//
//  Created by Yunsu Guk on 2020/04/24.
//  Copyright © 2020 krgoodnews. All rights reserved.
//

import Foundation

private struct Document {
    let priority: Int
    let location: Int
}

/// 프로그래머스 연습 > 스택/큐 > 프린터
private func solution(_ priorities:[Int], _ location:Int) -> Int {
    var sortedPriorities = Array(priorities.sorted().reversed())
    var documents = priorities.enumerated().map {
        Document(priority: $0.element, location: $0.offset)
    }
    var printedDocCount = 0

    while true {
        guard let firstDoc = documents.first else { break }
        if firstDoc.priority == (sortedPriorities.first ?? -1) {
            printedDocCount += 1
            if firstDoc.location == location {
                return printedDocCount
            }
            documents.removeFirst()
            sortedPriorities.removeFirst()
        } else {
            documents.append(documents.removeFirst())
        }

    }

    return 0
}

