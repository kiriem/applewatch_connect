//
//  InterfaceController.swift
//  watchapp Extension
//
//  Created by Kirie Miyajima on 2017/08/02.
//  Copyright © 2017年 Kirie Miyajima. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var sendButton: WKInterfaceButton!
    
    @IBAction func sendMessage() {
        
        
        
    }

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
