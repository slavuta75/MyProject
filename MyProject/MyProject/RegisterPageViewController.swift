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
    
    
    @IBOutlet weak var registerBotton: UIButton!
    
    @IBOutlet weak var iHaveRegisterButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerBotton.layer.borderColor = UIColor.yellow.cgColor
        registerBotton.layer.borderWidth = 1.0
        registerBotton.layer.cornerRadius = 9
        
        iHaveRegisterButton.layer.borderColor = UIColor.blue
            .cgColor
        iHaveRegisterButton.layer.borderWidth = 1.0
        iHaveRegisterButton.layer.cornerRadius = 9

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        
        let userLogin = userLoginTextField.text
        let userPassword = userPasswordTextField.text
        let repeatPassword = repeatPasswordTextField.text
        
        // check for empty fields
        
        if (userLogin == "" || userPassword == "" || repeatPassword == "")  {
            
            displayMyAlertMessage(userMessage: "Все поля должны быть заполнены")
            return
        }
        
        //Store date
        
        //display alert message with conformation
        if repeatPassword != userPassword {
            displayMyAlertMessage(userMessage: "Не совпадают пароли")
            return
        }
        
        UserDefaults.standard.set(userLogin, forKey: "userLogin")
        UserDefaults.standard.set(userPassword, forKey: "userPassword")
        UserDefaults.standard.synchronize()
        
        let  myAlert = UIAlertController(title: "Внимание", message: "Регистрация прошла успешно. Спасибо", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default) {
            action in
            self.dismiss(animated: true, completion: nil)
            
        }
        
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
    }
    
    
    func displayMyAlertMessage(userMessage: String){
        
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

   

