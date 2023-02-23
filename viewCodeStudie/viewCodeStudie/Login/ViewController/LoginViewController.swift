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
    }
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }
}

extension LoginViewController: LoginScreenProtocol {
    func tappedLoginButton() {
        print(":LoginViewController")
    }
}
