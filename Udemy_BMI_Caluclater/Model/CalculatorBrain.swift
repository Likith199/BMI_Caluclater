//
//  CalculatorBrain.swift
//  Udemy_BMI_Caluclater
//
//  Created by Mac on 12/08/20.
//  Copyright © 2020 Gunde Ramakrishna Goud. All rights reserved.
//

import Foundation
import UIKit
struct CalculateBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float)
    {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }else if bmiValue < 24.9 {
              bmi = BMI(value: bmiValue, advice: "Fir as a fiddlel!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
       
    }
    func getBMIValue() -> String
    {
//        if let safeBMI = bmi {
//            let bmiDecimalVale = String(format: "%.1f", safeBMI)
//            return bmiDecimalVale
//        }else{
//            return "0.0"
//        }
        let bmiDecimalVale = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiDecimalVale
        

    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "no advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
      }
}
