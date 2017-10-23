//
//  ShopTableViewController.swift
//  Yanabah
//
//  Created by Garrett Lyons on 10/23/17.
//  Copyright © 2017 Garrett Lyons. All rights reserved.
//

import UIKit

class ShopTableViewController: UITableViewController {

    var teas: [Tea]?
    
    struct Storyboard {
        static let shopTeaCell = "ShopTeaCell"
        static let showTeaDetail = "ShowTeaDetail"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "TEA SHOP"
        
        teas = Tea.fetchTea()
        self.tableView.reloadData()
        
        self.tableView.estimatedRowHeight = tableView.rowHeight
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Storyboard.showTeaDetail {
            if let teaDetailTVC = segue.destination as? TeaDetailTableViewController {
                let selectedTea = self.teas?[(sender as! IndexPath).row]
                teaDetailTVC.tea = selectedTea
            }
        }
    }
}

extension ShopTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let teas = teas {
            return teas.count
        } else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.shopTeaCell, for: indexPath) as! ShopTeaTableViewCell
        
        cell.tea = self.teas?[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showTeaDetail", sender: indexPath)
    }
}


















