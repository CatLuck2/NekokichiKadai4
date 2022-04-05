//
//  Number.swift
//  NekokichiKadai4
//
//  Created by Nekokichi on 2022/04/05.
//

import UIKit

private protocol CountUp {
    var num: Int { get set }
    mutating func increment()
    mutating func reset()
}

struct Number: CountUp {
    var num: Int

    mutating func increment() {
        num += 1
    }

    mutating func reset() {
        num = 0
    }
}
