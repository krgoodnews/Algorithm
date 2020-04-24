//
//  DevelopFeature.swift
//  algorithm
//
//  Created by Yunsu Guk on 2020/04/24.
//  Copyright © 2020 krgoodnews. All rights reserved.
//

import Foundation

private class Project {
    private var progress: Int
    private let speed: Int

    var isComplete: Bool {
        return progress >= 100
    }

    func workADay() {
        guard !isComplete else { return }
        progress += speed
    }

    init(progress: Int, speed: Int) {
        self.progress = progress
        self.speed = speed
    }
}

private func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var releaseCounts: [Int] = []
    var projects: [Project] = []

    for i in 0..<progresses.count {
        projects.append(Project(progress: progresses[i], speed: speeds[i]))
    }

    while !projects.isEmpty {
        projects.forEach { $0.workADay() }
        var release = 0
        while projects.first?.isComplete == true {
            release += 1
            projects.removeFirst()
        }

        if release > 0 { releaseCounts.append(release) }
    }

    return releaseCounts
}

//print(solution([93, 30, 55], [1,30,5]))

