//
//  TransactionTableViewCell.swift
//  MoneyPlus
//
//  Created by Seeking on 12/05/2020.
//  Copyright © 2020 Seeking. All rights reserved.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {
    
    // Outlet properties
    @IBOutlet var typeImageView: UIImageView!
    @IBOutlet var activityLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var moneyLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
