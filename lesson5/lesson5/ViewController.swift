//
//  ViewController.swift
//  lesson5
//
//  Created by Slava Utyuzh on 07.03.17.
//  Copyright © 2017 Slava Utyuzh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var labelCollectionBlack: [UILabel]!
    
    @IBOutlet weak var button1: UIButton!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageChanged = (UserDefaults.standard.value(forKey: "imageChanged") != nil) ? UserDefaults.standard.value(forKey: "imageChanged") as! Bool : false
        print( imageChanged == true ? "image was changed" : "image wasn't changed")
        
       //  UserDefaults.standard.set(true, forKey: "imageChanged")
        
        
        let dateform = DateFormatter()
        dateform.dateFormat = "dd/MMMM/yy"
//  dateform.timeZone = TimeZone.current.abbreviation()
        print(dateform.string(from: Date()))
 //       Date().timeIntervalSinceReferenceDate
        print("\(Date().timeIntervalSinceReferenceDate)")
        
        print(Date())
        
        let array = [1,2,3,4,5,6,7,8,9,0]
        let nsArray = array as NSArray
        nsArray.write(toFile: "/Users/slavautyuzh/Documents/my work/MyProject/lesson5/Lecture5.plist", atomically: false)
        
        var     nnArray = [] as NSArray
//        nnArray = String(Array[Int]:"/Users/slavautyuzh/Documents/my work/MyProject/lesson5/Lecture5.plist", encoding: String.Encoding.utf8)
//        print(nnArray)
        
        for label in labelCollectionBlack {
        
            label.text = "Кнопка"
        }
        labelCollectionBlack[1].text = dateform.string(from: Date())
    
    print(Double(343434.988123456).toString())
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        
 //       print(sender.description)
        
        
        if sender == button1 {
        view.backgroundColor = .yellow
        }
        else {
        view.backgroundColor = UIColor.magenta
        }
        
        sender.tag += 1
        
        if sender.tag == 5 {
        sender.tag = 0
            labelCollectionBlack[0].text = "кнопка" + String(labelCollectionBlack[0].tag)
            labelCollectionBlack[0].tag += 1
        }
    }
   
    @IBAction func changeImage(_ sender: UIButton) {
        sender.tag += 1
        if sender.tag % 2 == 0 {
        imageView.image = UIImage(named: "Reggae")
        } else if sender.tag % 3 == 0 {
        imageView.image = UIImage(named: "Horse")
        }
        else {
        imageView.image = UIImage(named: "Dog Foot")
        }
        
        UserDefaults.standard.set(true, forKey: "imageChanged")
    }
        

}

