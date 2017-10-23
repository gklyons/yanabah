//
//  ShopTeaTableViewCell.swift
//  Yanabah
//
//  Created by Garrett Lyons on 10/23/17.
//  Copyright © 2017 Garrett Lyons. All rights reserved.
//

import UIKit

class ShopTeaTableViewCell: UITableViewCell {

    var tea: Tea! {
        didSet {
            self.updateUI()
        }
    }

    func updateUI() {
        
    }
    
}
