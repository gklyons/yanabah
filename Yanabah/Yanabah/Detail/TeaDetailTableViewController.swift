//
//  TeaDetailTableViewController.swift
//  Yanabah
//
//  Created by Garrett Lyons on 10/23/17.
//  Copyright © 2017 Garrett Lyons. All rights reserved.
//

import UIKit

class TeaDetailTableViewController: UITableViewController {

    @IBOutlet weak var teaImagesView: UIImageView!
    
    var tea: Tea!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = tea.name
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

  
}
