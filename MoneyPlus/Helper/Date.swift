//
//  Date.swift
//  MoneyPlus
//
//  Created by Seeking on 13/05/2020.
//  Copyright © 2020 Seeking. All rights reserved.
//

import Foundation

// 12 months
let DateMap: [String: String] = ["1": "January", "01": "January",
                                 "2": "February", "02": "February",
                                 "3": "March", "03": "March",
                                 "4": "April", "04": "April",
                                 "5": "May", "05": "May",
                                 "6": "June", "06": "June",
                                 "7": "July", "07": "July",
                                 "8": "Augest", "08": "Augest",
                                 "9": "September", "09": "September",
                                 "10": "October", "11": "November", "12": "December"]

// 31 days
let Days: [String] = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10",
                      "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
                      "21", "22", "23", "24", "25", "26", "27", "28", "29", "30",
                      "31"
]

// get current date
func getDate() -> [String] {
    let date = Date().description.split(separator: " ")[0].split(separator: "-")
    // print(date)
    // e.g: "2020-05-15 17:46:53 +0000"
    
    let year: String = String(date[0])
    let month: String = String(date[1])
    let day: String = String(date[2])
    
    return [day, month, year]
}

// format date
func getFormattedDate(for date: String) -> String {
    /*
     * unformatted date: 04/12/1998
     * formatted date: 4 December 1998
     */
    let splitDate = date.split(separator: "/")
    
    let year = splitDate[2]
    var month: String = ""
    if let res = DateMap[String(splitDate[1])] {
        month = res
    } else {
        month = String(splitDate[1])
    }
    let day = splitDate[0]
    
    return "\(day) \(month) \(year)"
}

// check whether the string is conformed to the format of date
// a format date is like: 04/12/1998
func check(for string: String) -> Bool {
    // regular expression
    let pattern = "[0-3][0-9]/[0-1][0-9]/[0-9]{4}"
    let regex = try! NSRegularExpression(pattern: pattern, options: .caseInsensitive)
    
    let matches = regex.matches(in: string, options: .reportProgress, range:NSRange(location: 0, length: string.count))
    
    if matches.count > 0 {
        let date = string.split(separator: "/")
        var flag: Bool = true
        
        if !DateMap.keys.contains(String(date[1])) {
            flag = false
        } else if !Days.contains(String(date[0])) {
            flag = false
        }
        
        return flag
    }
    return false
}
