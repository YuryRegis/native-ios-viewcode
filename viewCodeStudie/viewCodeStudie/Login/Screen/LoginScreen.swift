//
//  LoginScreen.swift
//  viewCodeStudie
//
//  Created by Yury Regis on 22/02/23.
//

import UIKit

class LoginScreen: UIView {
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "Hello World"
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let email = UITextField()
        email.textColor = .white
        email.font = UIFont.systemFont(ofSize: 20)
        email.backgroundColor = .darkGray
        email.borderStyle = .roundedRect
        email.layer.borderColor = UIColor.white.cgColor
        email.layer.borderWidth = 1
        email.layer.cornerRadius = 9
        email.attributedPlaceholder = NSAttributedString(string: "exemplo@email.com", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        email.keyboardType = .emailAddress
        email.translatesAutoresizingMaskIntoConstraints = false
        return email
    }()
    
    lazy var passwordTextField: UITextField = {
        let password = UITextField()
        password.textColor = .white
        password.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        password.isSecureTextEntry = true
        password.font = UIFont.systemFont(ofSize: 20)
        password.backgroundColor = .darkGray
        password.borderStyle = .roundedRect
        password.layer.borderWidth = 1
        password.layer.cornerRadius = 9
        password.layer.borderColor = UIColor.white.cgColor
        password.keyboardType = .default
        password.translatesAutoresizingMaskIntoConstraints = false
        return password
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
        backgroundColor = .darkGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        self.addSubview(loginLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 50),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15)
        ])
    }
}
