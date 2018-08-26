//
//  InterfaceController.swift
//  Scrum Poker Watch WatchKit Extension
//
//  Created by Alexandre Fontoura on 22/08/2018.
//  Copyright © 2018 Alexandre Fontoura. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var data = ["0", "1/2", "1", "2", "3", "5", "8", "13", "20", "40", "100", "∞", "?", "☕️"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        tableRefresh()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBOutlet weak var tblRow: WKInterfaceTable!
    
    func tableRefresh(){
        tblRow.setNumberOfRows(data.count, withRowType: "row")
        print(data.count)
        print(tblRow.numberOfRows)
        for index in 0 ..< tblRow.numberOfRows {
            let row = tblRow.rowController(at: index) as! TableRowController
            row.SetNumber(num: data[index])
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        self.pushController(withName: "showDetails", context: data[rowIndex])
        //self.pushController(withName: "showDetails", context: rowIndex)
    }
}
