//
//  ViewController.swift
//  NekokichiKadai4
//
//  Created by Nekokichi on 2022/04/05.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak private var incrementedNumLabel: UILabel!
    private var number: CountUp = Number()

    override func viewDidLoad() {
        super.viewDidLoad()
        incrementedNumLabel.text = "\(number.num)"
    }

    @IBAction func incrementNumButton(_ sender: UIButton) {
        number.increment()
        incrementedNumLabel.text = "\(number.num)"
    }

    @IBAction func clearIncrementedNumButton(_ sender: UIButton) {
        number.reset()
        incrementedNumLabel.text = "\(number.num)"
    }

}
