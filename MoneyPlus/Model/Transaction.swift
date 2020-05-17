//
//  Transaction.swift
//  MoneyPlus
//
//  Created by Seeking on 12/05/2020.
//  Copyright © 2020 Seeking. All rights reserved.
//

import Foundation

struct Transaction {
    var activity: String
    var detail: String
    var date: String
    var type: TransactionType
    var amount: Double
    var location: String
    
    init() {
        activity = ""
        detail = ""
        date = ""
        type = .expense
        amount = 0.0
        location = ""
    }
    
    init(activity: String, detail: String = "", date: String, type: TransactionType, amount: Double = 0, location: String = "") {
        self.activity = activity
        self.detail = detail
        self.date = date
        self.type = type
        self.amount = amount
        self.location = location
    }
}

extension Transaction {
    enum TransactionType: Int {
        case income = 0
        case expense = 1
    }
}

// mock dara
var mockTransactions: [Transaction] = [
    Transaction(activity: "Buy Swift Book", detail: "Too expensive!", date: "10 April 2020", type: .expense, amount: 300.00, location: "Manchester, England, United Kingdom"),
    Transaction(activity: "Scholarship", detail: "Wow, so cool~", date: "30 March 2020", type: .income, amount: 500.00, location: "Nanjing, China"),
]
