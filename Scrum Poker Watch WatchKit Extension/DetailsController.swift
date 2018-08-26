//
//  DetailsController.swift
//  Scrum Poker Watch WatchKit Extension
//
//  Created by Alexandre Fontoura on 26/08/2018.
//  Copyright © 2018 Alexandre Fontoura. All rights reserved.
//

import WatchKit

class DetailsController: WKInterfaceController {

    @IBOutlet var btLabel: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let data = context as! String
        btLabel.setTitle(data)
        //let data = context as! Int
        //btLabel.setBackgroundImageNamed(String(data))
    }
    
    @IBAction func buttonAction() {
        self.pop()
    }
}
