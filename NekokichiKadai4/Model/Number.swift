//
//  Number.swift
//  NekokichiKadai4
//
//  Created by Nekokichi on 2022/04/05.
//

import UIKit

// 必要な変数や関数をプロトコルで用意
protocol CountUp {
    var num: Int { get set }
    mutating func increment()
    mutating func reset()
}

// 数字をカウントアップするので、型名をcountedUpNumber
struct CountedUpNumber: CountUp {
    var num: Int = 0

    mutating func increment() {
        num += 1
    }

    mutating func reset() {
        num = 0
    }
}
