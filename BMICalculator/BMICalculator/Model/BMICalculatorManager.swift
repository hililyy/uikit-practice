//
//  BMICalculatorManager.swift
//  BMICalculator
//
//  Created by 강조은 on 2023/03/18.
//

import UIKit

final class BMICalculatorManager {
    private var bmi: BMI?
    
    func calculateBMI(height: String, weight: String) {
        guard let h = Double(height), let w = Double(weight) else {
            bmi = BMI()
            return
        }
        
        let color: UIColor?
        let advice: String?
        var bmiNumber = w / (h * h) * 10000
        bmiNumber = round(bmiNumber * 10) / 10
        
        switch bmiNumber {
        case ..<18.6:
            color = UIColor(displayP3Red: 22/255, green: 231/255, blue: 207/255, alpha: 1)
            advice = "저체중"
            break
        case 18.6..<23.0:
            color = UIColor(displayP3Red: 212/255, green: 251/255, blue: 121/255, alpha: 1)
            advice = "표준"
            break
        case 23.0..<25.0:
            color = UIColor(displayP3Red: 218/255, green: 127/255, blue: 163/255, alpha: 1)
            advice = "과체중"
            break
        case 25.0..<30.0:
            color = UIColor(displayP3Red: 255/255, green: 150/255, blue: 141/255, alpha: 1)
            advice = "중도비만"
            break
        case 30.0...:
            color = UIColor(displayP3Red: 255/255, green: 100/255, blue: 78/255, alpha: 1)
            advice = "고도비만"
            break
        default:
            bmi = BMI()
            return
        }
        
        guard let color = color, let advice = advice else {
            bmi = BMI()
            return
        }
        bmi = BMI(value: bmiNumber, matchColor: color, advice: advice)
    }
    
    func getBMIResult(height: String, weight: String) -> BMI {
        calculateBMI(height: height, weight: weight)
        return bmi ?? BMI()
    }
}
