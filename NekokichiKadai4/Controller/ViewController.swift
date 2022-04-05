//
//  ViewController.swift
//  NekokichiKadai4
//
//  Created by Nekokichi on 2022/04/05.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak private var incrementedNumLabel: UILabel!
    private var countedUpNumber: CountUp = CountedUpNumber()

    override func viewDidLoad() {
        super.viewDidLoad()
        setNumInIncrementedNumLabel(countedUpNumber.num)
    }

    private func setNumInIncrementedNumLabel(_ value: Int) {
        incrementedNumLabel.text = "\(value)"
    }

    @IBAction func incrementNumButton(_ sender: UIButton) {
        countedUpNumber.increment()
        setNumInIncrementedNumLabel(countedUpNumber.num)
    }

    @IBAction func clearIncrementedNumButton(_ sender: UIButton) {
        countedUpNumber.reset()
        setNumInIncrementedNumLabel(countedUpNumber.num)
    }

}
