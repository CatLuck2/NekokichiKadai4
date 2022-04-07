//
//  Number.swift
//  NekokichiKadai4
//
//  Created by Nekokichi on 2022/04/05.
//

import UIKit

// 必要な変数や関数をプロトコルで用意
protocol NumberCounterProtocol {
    var num: Int { get }
    func increment()
    func reset()
}

// 数字をカウントアップするので、型名をcountedUpNumber
class NumberCounter: NumberCounterProtocol {
    private(set) var num: Int = 0

    func increment() {
        num += 1
    }

    func reset() {
        num = 0
    }
}
