//
//  ViewController.swift
//  table
//
//  Created by period8 on 2/15/22.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
    
    var superHeros = ["Batman", "Spiderman", "Iron Man", "Deadpool"]
    var sports = ["Wrestling", "Basketball", "Football", "Baseball"]
    var images = [UIImage(named: "logowrestling"), UIImage(named: "logobasketball"), UIImage(named: "logofootball"), UIImage(named: "logobaseball") ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeros.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
    
        cell?.textLabel?.text = superHeros[indexPath.row]
        cell?.detailTextLabel?.text = sports[indexPath.row]
        cell?.imageView?.image = UIImage(named: images[indexPath.row])
        cell?.textLabel?.font = UIFont(name: "Arial", size: 31)
        return cell!
}

}
