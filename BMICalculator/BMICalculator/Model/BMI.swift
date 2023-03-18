//
//  BMI.swift
//  BMICalculator
//
//  Created by 강조은 on 2023/03/18.
//

import UIKit

struct BMI {
    let value: Double
    let matchColor: UIColor
    let advice: String
    
    init(value: Double = 0.0, matchColor: UIColor = .white, advice: String = "오류발생") {
        self.value = value
        self.matchColor = matchColor
        self.advice = advice
    }
}
