//
//  ForgotPasswordController.swift
//  registrationOnUIKit
//
//  Created by Егорио on 01.10.2024.
//

import UIKit

class ForgotPasswordController: UIViewController {
    
    private let headerView = ForgotPasswordHeaderView(title: "Забыли пароль?", subTitle: "Мы отправим Вам ссылку на восстановление")
    private let emailField = RegisterCustomTextField(FieldType: .email)
    private let recoveryAccountButton = RecoveryAccountButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        self.setupUI()
    }
    
    private func setupUI() {
        // Создаем stack view для формы логина
        let formStackView = UIStackView(arrangedSubviews: [emailField, recoveryAccountButton])
        formStackView.axis = .vertical
        formStackView.spacing = 12
        formStackView.alignment = .fill
        formStackView.distribution = .fillEqually
        
        self.view.addSubview(headerView)
        self.view.addSubview(formStackView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        formStackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Констрейнты для headerView
        NSLayoutConstraint.activate([
            self.headerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 30),
            self.headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.headerView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        // Констрейнты для формы
        NSLayoutConstraint.activate([
            formStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            formStackView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 1),
            formStackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            formStackView.heightAnchor.constraint(equalToConstant: 150) 
        ])
        
    }
}
