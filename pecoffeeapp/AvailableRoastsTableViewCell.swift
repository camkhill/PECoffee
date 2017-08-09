//
//  AvailableRoastsTableViewCell.swift
//  pecoffeeapp
//
//  Created by Hill, Cameron on 8/8/17.
//  Copyright © 2017 Positive Energy Coffee. All rights reserved.
//

import UIKit

class AvailableRoastsTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var roastTitleLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var tastingNotesLabel: UILabel!
    
    
    
}
