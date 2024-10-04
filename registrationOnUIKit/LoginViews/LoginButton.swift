//
//  LoginButton.swift
//  registrationOnUIKit
//
//  Created by Егорио on 03.10.2024.
//

import UIKit

class LoginButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Настройки для самой кнопки
        self.setTitle("Войти", for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.backgroundColor = UIColor(hex: "#01A99C")
        self.layer.cornerRadius = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

