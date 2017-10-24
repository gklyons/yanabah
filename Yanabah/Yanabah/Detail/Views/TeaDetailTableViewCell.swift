//
//  TeaDetailTableViewCell.swift
//  Yanabah
//
//  Created by Garrett Lyons on 10/23/17.
//  Copyright © 2017 Garrett Lyons. All rights reserved.
//

import UIKit

class TeaDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var teaNameLabel: UILabel!
    @IBOutlet weak var teaDescriptionLabel: UILabel!
    @IBOutlet weak var teaDetailDescriptionLabel: UILabel!
    
    var tea: Tea! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        teaNameLabel.text = tea.name
        teaDescriptionLabel.text = tea.description
        teaDetailDescriptionLabel.text = tea.detail
    }
    
}
