//
//  HomeViewController.swift
//  TableView
//
//  Created by DA MAC M1 144 on 2023/05/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var viewTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewTable.delegate=self
        viewTable.dataSource=self
    }
  

}

extension HomeViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell=viewTable.dequeueReusableCell(withIdentifier: "cell", for: <#T##IndexPath#>)
        let cell=viewTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text="Cell text: \(indexPath.row)"
        return cell
    }
    
}

extension HomeViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("You have clicked row number: \(indexPath.row)")
    }
}
