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
    }
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }


}

