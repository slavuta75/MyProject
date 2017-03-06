//
//  LoginViewController.swift
//  MyProject
//
//  Created by Slava Utyuzh on 06.03.17.
//  Copyright © 2017 Slava Utyuzh. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var userLoginTextField: UITextField!
    
    @IBOutlet weak var userPasswordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        let userLogin = userLoginTextField.text
        let userPassword = userPasswordTextField.text
        
        let userLoginStored = UserDefaults.standard.string(forKey: "userLogin")
        
        let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword")
        
        if (userLoginStored == userLogin && userPasswordStored == userPassword) {
            
            // login successful
            UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
            UserDefaults.standard.synchronize()
  //          navigationController?.popViewController(animated: true)
            self.dismiss(animated: true, completion: nil)
            
            
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
