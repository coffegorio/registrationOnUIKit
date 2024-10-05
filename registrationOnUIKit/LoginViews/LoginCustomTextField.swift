//
//  CustomTextField.swift
//  registrationOnUIKit
//
//  Created by Егорио on 03.10.2024.
//

import UIKit

class LoginCustomTextField: UITextField {

    enum customTextFieldType {
        case email
        case password
    }
    
    private let authFieldType: customTextFieldType
    
    init(FieldType: customTextFieldType) {
        self.authFieldType = FieldType
        super.init(frame: .zero)
        
        self.backgroundColor = .secondarySystemBackground
        self.layer.cornerRadius = 10
        
        self.returnKeyType = .done
        self.autocorrectionType = .no
        self.autocapitalizationType = .none
        
        // Добавляем padding для текста
        setPadding(left: 12, right: 12)
        
        // Устанавливаем placeholder в зависимости от типа поля
        setupPlaceholder(for: FieldType)
        
        // Устанавливаем настройку для пароля
//        if FieldType == .password {
//            self.isSecureTextEntry = true
//        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Функция для установки padding
    private func setPadding(left: Int, right: Int) {
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: left, height: 0))
        self.leftView = leftPaddingView
        self.leftViewMode = .always
        
        let rightPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: right, height: 0))
        self.rightView = rightPaddingView
        self.rightViewMode = .always
    }
    
    // Функция для установки placeholder
    private func setupPlaceholder(for type: customTextFieldType) {
        switch type {
        case .email:
            self.placeholder = "Введите email"
        case .password:
            self.placeholder = "Введите пароль"
        }
    }
}

