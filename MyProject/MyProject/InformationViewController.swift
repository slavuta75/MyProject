//
//  InformationViewController.swift
//  MyProject
//
//  Created by Slava Utyuzh on 10.03.17.
//  Copyright © 2017 Slava Utyuzh. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController, UITableViewDataSource {

 
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 4
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
     {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        let cell = tableView.dequeueReusableCell(withIdentifier:(indexPath.section == 0 ? "cellDetail" : "cell"), for: indexPath)
//                if indexPath.section == 0
//        //        {
        switch indexPath.row {
        case 0 :
            cell.backgroundView?.backgroundColor = UIColor.orange
            cell.textLabel?.text = "Иванченко Иван Иванович"
            //   cell.detailTextLabel?.text = "\(indexPath.row)"
            cell.imageView?.image = UIImage(named: "User Menu Male")
        case 1 :
            cell.backgroundView?.backgroundColor = UIColor.orange
            cell.textLabel?.text = "098 5453234"
         //   cell.detailTextLabel?.text = "\(indexPath.row)"
            cell.imageView?.image = UIImage(named: "Cell Phone")
        case 2 :
            cell.backgroundView?.backgroundColor = UIColor.orange
            cell.textLabel?.text = "ivanchenKo@gmail.com"
         //   cell.detailTextLabel?.text = "\(indexPath.row)"
            cell.imageView?.image = UIImage(named: "Email_bold")
//        case 3 :
//            cell.backgroundView?.backgroundColor = UIColor.orange
//            cell.textLabel?.text = "text"
//            cell.detailTextLabel?.text = "\(indexPath.row)"
//            cell.imageView?.image = UIImage(named: "facebook_1")
        case 3 :
            cell.backgroundView?.backgroundColor = UIColor.orange
            cell.textLabel?.text = "Audi S4, 2007 г, красная, AA 4321"
            cell.detailTextLabel?.text = "\(indexPath.row)"
            cell.imageView?.image = UIImage(named: "Car_2")
        default :
            break
        }
        
        
        return cell
    }


}
