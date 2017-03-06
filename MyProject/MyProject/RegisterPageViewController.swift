//
//  RegisterPageViewController.swift
//  MyProject
//
//  Created by Slava Utyuzh on 06.03.17.
//  Copyright © 2017 Slava Utyuzh. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {
    
    
    
    @IBOutlet weak var userLoginTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        
        let userLogin = userLoginTextField.text
        let userPassword = userPasswordTextField.text
        let repeatPssword = repeatPasswordTextField.text
        
        
        
        
        
        
    }

   
}
