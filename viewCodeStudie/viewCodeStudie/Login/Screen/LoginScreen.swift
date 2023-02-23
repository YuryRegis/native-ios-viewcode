//
//  LoginScreen.swift
//  viewCodeStudie
//
//  Created by Yury Regis on 22/02/23.
//

import UIKit

protocol LoginScreenProtocol: AnyObject {
    func tappedLoginButton()
}

class LoginScreen: UIView {
    
    private weak var delegate: LoginScreenProtocol?
    
    public func delegate(_ delegate: LoginScreenProtocol?) {
        self.delegate = delegate
    }
    
    public func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        emailTextField.delegate = delegate
        passwordTextField.delegate = delegate
    }
    
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
        email.layer.borderColor = UIColor.magenta.cgColor
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
        password.layer.borderColor = UIColor.magenta.cgColor
        password.keyboardType = .default
        password.translatesAutoresizingMaskIntoConstraints = false
        return password
    }()
    
    lazy var loginBuntton: UIButton = {
        let loginBtn = UIButton()
        loginBtn.clipsToBounds = true
        loginBtn.layer.cornerRadius = 9
        loginBtn.backgroundColor = .magenta
        loginBtn.setTitle("Logar", for: .normal)
        loginBtn.setTitleColor(UIColor.white, for: .normal)
        loginBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return loginBtn
    }()
    
    @objc func tappedLoginButton(_ sender: UIButton) {
        print("Tapped!")
        delegate?.tappedLoginButton()
    }
    
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
        self.addSubview(loginBuntton)
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
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            loginBuntton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            loginBuntton.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginBuntton.heightAnchor.constraint(equalToConstant: 50),
            loginBuntton.widthAnchor.constraint(equalToConstant: 300),
        ])
    }
}
