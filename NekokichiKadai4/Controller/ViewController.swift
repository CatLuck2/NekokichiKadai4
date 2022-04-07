//
//  ViewController.swift
//  NekokichiKadai4
//
//  Created by Nekokichi on 2022/04/05.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak private var incrementedNumLabel: UILabel!
    // Modelであることを示すために、末尾にModelを付与
    private var numberCounter: NumberCounterProtocol = NumberCounter()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateIncrementedNumLabel()
    }

    /*
     ・Labelの値を3度（初期表示、カウントアップ、初期化）変更するので、
        代入処理を関数で実装
     */
    private func updateIncrementedNumLabel() {
        incrementedNumLabel.text = "\(numberCounter.num)"
    }

    @IBAction func incrementNumButton(_ sender: UIButton) {
        numberCounter.increment()
        updateIncrementedNumLabel()
    }

    @IBAction func clearIncrementedNumButton(_ sender: UIButton) {
        numberCounter.reset()
        updateIncrementedNumLabel()
    }

}
