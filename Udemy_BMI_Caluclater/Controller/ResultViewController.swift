//
//  ResultViewController.swift
//  Udemy_BMI_Caluclater
//
//  Created by Mac on 12/08/20.
//  Copyright © 2020 Gunde Ramakrishna Goud. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue = "0.0"
    var advice: String?
    var color: UIColor?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    

    @IBAction func onReCalculateBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
