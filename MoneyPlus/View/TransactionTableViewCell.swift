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
    @IBOutlet weak var typeImageView: UIImageView!
    @IBOutlet weak var activityLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
