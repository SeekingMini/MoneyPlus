//
//  TransactionDetailViewController.swift
//  MoneyPlus
//
//  Created by Seeking on 15/05/2020.
//  Copyright © 2020 Seeking. All rights reserved.
//

import UIKit

class TransactionDetailViewController: UIViewController {
    
    var transaction: TransactionMO!
    
    // Outlet参数
    @IBOutlet var displayView: UIView!
    @IBOutlet var closeButton: UIButton!
    
    @IBOutlet var activityLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var moneyLabel: UILabel!
    @IBOutlet var detailLabel: UILabel!
    
    // Action参数
    @IBAction func close(sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // configure view
        view.backgroundColor = .none
        displayView.layer.cornerRadius = 10.0
        closeButton.backgroundColor = .none
        
        // initialize label values
        activityLabel.text = transaction.title
        dateLabel.text = transaction.date
        locationLabel.text = transaction.location
        moneyLabel.text = (transaction.type == 0 ? "＋": "ー") + "$\(transaction.amount)"
        detailLabel.text = transaction.detail
    }
    
}
