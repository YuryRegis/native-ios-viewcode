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
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
