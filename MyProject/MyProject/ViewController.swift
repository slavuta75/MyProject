//
//  ViewController.swift
//  MyProject
//
//  Created by Slava Utyuzh on 06.03.17.
//  Copyright © 2017 Slava Utyuzh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var someTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let isUserLoggedIn = UserDefaults.standard.bool(forKey: "isUserLoggedIn")
        
        if !isUserLoggedIn {
        
        self.performSegue(withIdentifier: "loginView", sender: self)
        }
   
        }

    @IBOutlet weak var textPrintButton: UIButton!
    
    @IBAction func textPrintButton(_ sender: UIButton) {
    
        let someText = someTextField.text
        print(String(someText!)!)
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        UserDefaults.standard.set(false, forKey: "isUserLoggedIn")
        UserDefaults.standard.synchronize()
        
        
        self.performSegue(withIdentifier: "loginView", sender: self)
    }

}

