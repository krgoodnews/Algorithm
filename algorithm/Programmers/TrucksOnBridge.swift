//
//  TrucksOnBridge.swift
//  algorithm
//
//  Created by Yunsu Guk on 2020/04/24.
//  Copyright © 2020 krgoodnews. All rights reserved.
//

import Foundation

private final class BridgeQueue {
    private let length: Int
    private let maxWeight: Int

    private var bridgeArray: [Int]
    var currentWeight = 0

    init(length: Int, weight: Int) {
        self.length = length
        self.maxWeight = weight
        self.bridgeArray = Array(repeating: 0, count: length)
    }

    func pushTruck(weight: Int) {
        bridgeArray.insert(weight, at: 0)
        currentWeight += weight
    }

    func popTruck() {
        currentWeight -= bridgeArray.removeLast()
    }

    func isPossiblePush(weight: Int) -> Bool {
        if (currentWeight + weight) <= maxWeight {
            return true
        }

        return false
    }
}

private func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var trucks = truck_weights
    let bridge = BridgeQueue(length: bridge_length, weight: weight)
    var resultTime = 0

    while !trucks.isEmpty || bridge.currentWeight > 0 {
        // 내리고 -> 탈 수 있으면 타고
        resultTime += 1

        bridge.popTruck()

        guard let firstTruck = trucks.first else { continue }
        if bridge.isPossiblePush(weight: firstTruck) {
            bridge.pushTruck(weight: trucks.removeFirst())
            continue
        }

        bridge.pushTruck(weight: 0)
    }

    return resultTime
}
