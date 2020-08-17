//
//  ViewController.swift
//  Udemy_BMI_Caluclater
//
//  Created by Mac on 11/08/20.
//  Copyright © 2020 Gunde Ramakrishna Goud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     
    var calculateBrain = CalculateBrain()
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onHeightSliderBtn(_ sender: UISlider)
    {
       let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func onWeightSliderBtn(_ sender: UISlider)
    {
         let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    @IBAction func onCalculateBtn(_ sender: UIButton)
    {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculateBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"
        {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculateBrain.getBMIValue()
            destinationVC.advice = calculateBrain.getAdvice()
            destinationVC.color = calculateBrain.getColor()
        }
    }
}

