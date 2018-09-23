//
//  LoginViewController.swift
//  ShopManagment
//
//  Created by Mac on 22/09/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var merchantPassword: UITextField!
    @IBOutlet weak var merchantID: UITextField!
    
    private var userViewModel = UserViewModel()
    
    // MARK: Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: Button Events
    @IBAction func loginButtonTapped(_ sender: Any) {
        userViewModel.updateName(name: merchantID.text!)
        userViewModel.updatePassword(password: merchantPassword.text!)
        userViewModel.authenticate()
        
    }
    
    // MARK: View Events
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            if let touchView = touch.view, touchView == view {
                view.endEditing(true)
            }
        
        }
    }
}
