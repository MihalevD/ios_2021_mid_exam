//
//  PhoneViewController.swift
//  ios_2021_mid_exam
//
//  Created by Denislav's Mac Book on 7.01.22.
//

import UIKit

class PhoneViewController: UIViewController {
    var num: String = ""
    var phoneName: String = ""
    var agentImage: UIImage?

    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = phoneName
        number.text = num
        imageview.image = agentImage

        // Do any additional setup after loading the view.
    }

}
