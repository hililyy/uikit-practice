//
//  SecondViewController.swift
//  BMICalculator
//
//  Created by 강조은 on 2023/03/18.
//

import UIKit

final class SecondViewController: UIViewController {
    
    @IBOutlet weak var bmiNumberLabel: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }
    
    func makeUI() {
        backButton.layer.cornerRadius = 10
        bmiNumberLabel.layer.cornerRadius = 10
        bmiNumberLabel.clipsToBounds = true
        
        guard let bmi = bmi else { return }
        bmiNumberLabel.text = String(bmi.value)
        adviceLable.text = bmi.advice
        bmiNumberLabel.backgroundColor = bmi.matchColor
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

