//
//  TableRowController.swift
//  Scrum Poker Watch WatchKit Extension
//
//  Created by Alexandre Fontoura on 25/08/2018.
//  Copyright © 2018 Alexandre Fontoura. All rights reserved.
//

import WatchKit

class TableRowController: NSObject {
    @IBOutlet weak var number: WKInterfaceLabel!
    
    func SetNumber(num: String) {
        self.number.setText(num)
    }
}
