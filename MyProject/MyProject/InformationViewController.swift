//
//  InformationViewController.swift
//  MyProject
//
//  Created by Slava Utyuzh on 10.03.17.
//  Copyright © 2017 Slava Utyuzh. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController, UITableViewDataSource, UITextFieldDelegate {
    
    
    var comments = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 140
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //    func insertNewObject(_ sender: Any) {
    //
    //
    //    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // let headerTable =
        if section == 0 {
            return "Информация о водителе"
        }
        return "Отзывы пассажиров:"
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    { if section == 0 {
        return 4
        }
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: (indexPath.section == 0 ? "cell" : "cellDetail"), for: indexPath)
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0 :
                cell.textLabel?.text = "Иванченко Иван Иванович"
               cell.imageView?.image = UIImage(named: "User Menu Male")
            case 1 :
                cell.backgroundView?.backgroundColor = UIColor.orange
                cell.textLabel?.text = "098 5453234"
               cell.imageView?.image = UIImage(named: "Cell Phone")
            case 2 :
                cell.backgroundView?.backgroundColor = UIColor.orange
                cell.textLabel?.text = "ivanchenKo@gmail.com"
               cell.imageView?.image = UIImage(named: "Email_bold")
            case 3 :
                cell.backgroundView?.backgroundColor = UIColor.orange
                cell.textLabel?.text = "Audi S4, 2007 г, красная"
                cell.detailTextLabel?.text = "AA 4321)"
               cell.imageView?.image = UIImage(named: "Car_2")
            default :
                break
            }
           
        } else {
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = "hh:mm:ss dd/MM/yy"
            let result = formatter.string(from: date)
            cell.textLabel?.text = comments[indexPath.row]
            cell.detailTextLabel?.text = result
        }
        
        return cell
    }
    
    @IBAction func sendInquireButtonPressed(_ sender: UIButton) {
        let information = textField.text
        
        if information != nil {
            comments.append(information!)
        }
        tableView.beginUpdates()
        tableView.insertRows(at: [IndexPath(row: comments.count-1, section: 1)], with: .automatic)
        tableView.endUpdates()
        textField.text = ""
    }
    //    // keyboard show
    //    func textFieldDidBeginEditing(_ textField: UITextField) {
    //        moveTextField(textField: textField, moveDistance: -260, up: true)
    //    }
    //
    //    // keyboard hidden
    //    func textFieldDidEndEditing(_ textField: UITextField) {
    //        moveTextField(textField: textField, moveDistance: -260, up: false)
    //    }
    //    //
    //    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    //        textField.resignFirstResponder()
    //        return true
    //    }
    //
    //
    //
    //
    //
    //    func moveTextField(textField: UITextField, moveDistance: Int, up: Bool) {
    //        let moveDuration = 0.3
    //        let movement: CGFloat = CGFloat(up ? moveDistance : -moveDistance)
    //
    //        UIView.beginAnimations("animatedtextField", context: nil)
    //        UIView.setAnimationBeginsFromCurrentState(true)
    //        UIView.setAnimationDuration(moveDuration)
    //        self.view.frame = self.view.frame.offsetBy(dx: 0, dy: movement)
    //        UIView.commitAnimations()
    //    }
    
    
}
