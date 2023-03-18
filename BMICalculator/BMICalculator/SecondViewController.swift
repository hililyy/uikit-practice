//
//  SecondViewController.swift
//  BMICalculator
//
//  Created by 강조은 on 2023/03/18.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var bmiNumberLabel: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var bmiNumber: Double?
    var adviceString: String?
    var bmiColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }
    
    func makeUI() {
        backButton.layer.cornerRadius = 10
        bmiNumberLabel.layer.cornerRadius = 10
        bmiNumberLabel.clipsToBounds = true
        
        guard let bmi = bmiNumber else { return }
        bmiNumberLabel.text = String(bmi)
        adviceLable.text = adviceString
        bmiNumberLabel.backgroundColor = bmiColor
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

