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
    
    
    @IBOutlet weak var loginButton: UIButton!

    @IBOutlet weak var registerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
                loginButton.layer.borderColor = UIColor.red.cgColor
                loginButton.layer.borderWidth = 1.0
                loginButton.layer.cornerRadius = 7
 
                registerButton.layer.borderColor = UIColor.red.cgColor
                registerButton.layer.borderWidth = 1.0
                registerButton.layer.cornerRadius = 7
    
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
            
            
        }else {
        loginPsswordAlertMessage(userMessage: "Не совпадает пароль или логин")
        }
        
    }

    func loginPsswordAlertMessage(userMessage: String){
        
        let myAlert = UIAlertController(title: "Внимание", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
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
