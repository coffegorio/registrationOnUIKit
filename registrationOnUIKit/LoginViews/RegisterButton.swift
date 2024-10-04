//
//  RegisterButton.swift
//  registrationOnUIKit
//
//  Created by Егорио on 03.10.2024.
//

import UIKit

class RegisterButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setTitle("Зарегистрироваться", for: .normal)
        self.setTitleColor(UIColor(hex: "#01A99C"), for: .normal)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
