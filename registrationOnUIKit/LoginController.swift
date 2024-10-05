//
//  LoginController.swift
//  registrationOnUIKit
//
//  Created by Егорио on 01.10.2024.
//

import UIKit

class LoginController: UIViewController {

    private let headerView = AuthHeaderView(title: "Вход", subTitle: "Войдите в свой аккаунт")
    
    private let emailField = LoginCustomTextField(FieldType: .email)
    private let passwordField = LoginCustomTextField(FieldType: .password)
    private let loginButton = LoginButton()
    
    private let registerButton = RegisterButton()
    private let forgotPasswordButton = ForgotPasswordButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        self.setupUI()
        
        // Привязка действий к кнопкам
        registerButton.addTarget(self, action: #selector(handleRegisterTap), for: .touchUpInside)
        forgotPasswordButton.addTarget(self, action: #selector(handleForgotPasswordTap), for: .touchUpInside)
    }
    
    private func setupUI() {
        // Создаем stack view для формы логина
        let formStackView = UIStackView(arrangedSubviews: [emailField, passwordField, loginButton])
        formStackView.axis = .vertical
        formStackView.spacing = 12
        formStackView.alignment = .fill
        formStackView.distribution = .fillEqually
        
        // Добавляем вьюшки на главный экран
        self.view.addSubview(headerView)
        self.view.addSubview(formStackView)
        self.view.addSubview(registerButton)
        self.view.addSubview(forgotPasswordButton)
        
        // Отключаем autoresizing для использования констрейнтов
        headerView.translatesAutoresizingMaskIntoConstraints = false
        formStackView.translatesAutoresizingMaskIntoConstraints = false
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        
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
            formStackView.heightAnchor.constraint(equalToConstant: 200) // фиксированная высота для элементов формы
        ])
        
        // Констрейнты для кнопок под формой
        NSLayoutConstraint.activate([
            self.registerButton.topAnchor.constraint(equalTo: formStackView.bottomAnchor, constant: 20),
            self.registerButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            
            self.forgotPasswordButton.topAnchor.constraint(equalTo: formStackView.bottomAnchor, constant: 20),
            self.forgotPasswordButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30)
        ])
    }
    
    @objc func handleRegisterTap() {
        let registerController = RegisterController()
        self.navigationController?.pushViewController(registerController, animated: true)
    }

    @objc func handleForgotPasswordTap() {
        let forgotPasswordController = ForgotPasswordController()
        self.navigationController?.pushViewController(forgotPasswordController, animated: true)
    }
}
