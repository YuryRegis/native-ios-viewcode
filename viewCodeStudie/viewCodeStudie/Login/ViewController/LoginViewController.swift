//
//  ViewController.swift
//  viewCodeStudie
//
//  Created by Yury Regis on 22/02/23.
//

import UIKit

class LoginViewController: UIViewController {

    var loginScreen: LoginScreen?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.delegate(self)
        loginScreen?.configTextFieldDelegate(delegate: self)
    }
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }
}

extension LoginViewController: LoginScreenProtocol, UITextFieldDelegate {
    func tappedLoginButton() {
        print(":LoginViewController")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let email: String = self.loginScreen?.emailTextField.text ?? ""
        let password: String = self.loginScreen?.passwordTextField.text ?? ""
        
        if email.isEmpty || password.isEmpty {
//            lógica botão desativado
            self.loginScreen?.loginBuntton.isEnabled = false
            self.loginScreen?.loginBuntton.backgroundColor = .magenta.withAlphaComponent(0.6)
        } else {
//            lógica botão ativo
            self.loginScreen?.loginBuntton.isEnabled = true
            self.loginScreen?.loginBuntton.backgroundColor = .magenta
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
