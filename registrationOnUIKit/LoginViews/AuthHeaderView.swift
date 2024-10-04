//
//  AuthHeaderView.swift
//  registrationOnUIKit
//
//  Created by Егорио on 03.10.2024.
//

import UIKit

class AuthHeaderView: UIView {
    
    private let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "logo")
        iv.tintColor = .white
        return iv
    }()
    
    private let titleLabel: UILabel = {
        let mainLabel = UILabel()
        mainLabel.text = "Error"
        mainLabel.textAlignment = .center
        mainLabel.textColor = .black
        mainLabel.font = .systemFont(ofSize: 26, weight: .bold)
        return mainLabel
    }()
    
    private let subTitleLabel: UILabel = {
        let subTitleLabel = UILabel()
        let text = "Error"
        subTitleLabel.text = text
        subTitleLabel.textAlignment = .center
        subTitleLabel.textColor = .secondaryLabel
        subTitleLabel.font = .systemFont(ofSize: 18, weight: .regular)
        return subTitleLabel
    }()

    init(title: String, subTitle: String) {
        super .init(frame: .zero)
        self.titleLabel.text = title
        self.subTitleLabel.text = subTitle
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.addSubview(logoImageView)
        self.addSubview(titleLabel)
        self.addSubview(subTitleLabel)
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let screenHeight = UIScreen.main.bounds.height
        let logoTopOffset = screenHeight * 0.1

        NSLayoutConstraint.activate([
            self.logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: logoTopOffset),
            self.logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.logoImageView.widthAnchor.constraint(equalToConstant: 100),
            self.logoImageView.heightAnchor.constraint(equalTo: self.logoImageView.widthAnchor),
            
            self.titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 15),
            self.titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            self.subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            self.subTitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.subTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.subTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
    }
    
}
