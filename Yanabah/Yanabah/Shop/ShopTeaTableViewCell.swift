//
//  ShopTeaTableViewCell.swift
//  Yanabah
//
//  Created by Garrett Lyons on 10/23/17.
//  Copyright © 2017 Garrett Lyons. All rights reserved.
//

import UIKit

class ShopTeaTableViewCell: UITableViewCell {

    @IBOutlet weak var teaImageView: UIImageView!
    @IBOutlet weak var teaNameLabel: UILabel!
    @IBOutlet weak var teaPriceLabel: UILabel!
    
    var tea: Tea! {
        didSet {
            self.updateUI()
        }
    }

    func updateUI() {
        
        teaImageView.image = tea.images?.first
        teaNameLabel.text = tea.name
        
        if let price = tea.price {
            teaPriceLabel.text = "$\(price)"
        } else {
            teaPriceLabel.text = ""
        }
    }
    
}
