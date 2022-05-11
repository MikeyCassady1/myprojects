//
//  ViewController.swift
//  assignment notebook
//
//  Created by period8 on 2/25/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var aBlock = ["Block 1: Algebra pgs 1 + 2 all", "Block 2:", "Block 3:", "Block 4: read ch 9"]

    var bBlock = ["Block 5:", "Block 6: finish phil lit presentation", "Block 7:", "Block 8:"]
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var barButton: UIBarButtonItem!
    
    @IBOutlet weak var textFIeldBlockOne: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aBlock.count
        //return bBlock.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
    
        cell?.textLabel?.text = aBlock[indexPath.row]
        cell?.detailTextLabel?.text = bBlock[indexPath.row]
        cell?.textLabel?.font = UIFont(name: "Arial", size: 25)
        cell?.detailTextLabel?.font = UIFont(name: "Arial", size: 25)
        return cell!
    }

    
    @IBAction func barButtonPressed(_ sender: Any) {
    f()
    }
    func f(){
        let alert = UIAlertController(title: "What would you like to add?", message: nil, preferredStyle: UIAlertController.Style.alert)

        alert.addTextField { ( textField) in
            textField.placeholder = "Enter HW..."
            
        }
//            self.aBlock.append(alertTextField.text!)
//            self.tableView.reloadData()
            //textFIeldBlockOne = alertTextField
            print(self.aBlock)
        
        alert.addTextField { (textField) in
                        textField.placeholder = "Enter more HW..."
//            self.bBlock.append(alertTextFieldTwo.text!)
//            self.tableView.reloadData()
//            textFIeldBlockOne = alertTextField
        }
           
        let closeAction = UIAlertAction(title: "Close", style: .cancel, handler: nil)
alert.addAction(closeAction)

let doneAction = UIAlertAction(title: "Done", style: .default) { (action) in
    
    let homeworkOne = alert.textFields?[0].text
       
    let homeworkTwo = alert.textFields?[1].text
    
   // self.title = homeworkOne! + " " + homeworkTwo!
    self.aBlock.append(homeworkOne!)
    
    self.bBlock.append(homeworkTwo!)
    
    self.tableView.reloadData()
}

alert.addAction(doneAction)

    present(alert, animated: true, completion: nil)

    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deselectRow(at: indexPath, animated: true)
            
            aBlock.remove(at: indexPath.row)
            
            bBlock.remove(at: indexPath.row)
            
            tableView.reloadData()
        }
    }
    
}
