//
//  DetailViewController.swift
//  MemberList
//
//  Created by 강조은 on 2023/06/02.
//

import UIKit

final class DetailViewController: UIViewController {

    private let detailView = DetailView()
    
    var member: Member?
    
    override func loadView() {
        view = detailView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupData()
        setupButtonAction()
    }
    
    private func setupData() {
        detailView.member = member
    }
    
    func setupButtonAction() {
        detailView.saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
    }
    
    @objc func saveButtonTapped() {
        print("버튼이 눌림")
    }
}
