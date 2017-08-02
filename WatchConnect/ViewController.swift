//
//  ViewController.swift
//  WatchConnect
//
//  Created by Kirie Miyajima on 2017/08/01.
//  Copyright © 2017年 Kirie Miyajima. All rights reserved.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate {
    
    // Called when the session has completed activation. If session state is WCSessionActivationStateNotActivated there will be an error with more details.
    @available(iOS 9.3, *)
    public func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        print("The session has completed activation.")
    }
    
    // Called when the session can no longer be used to modify or add any new transfers and, all interactive messages will be cancelled, but delegate callbacks for background transfers can still occur. This will happen when the selected watch is being changed.
    @available(iOS 9.3, *)
    public func sessionDidBecomeInactive(_ session: WCSession) {
        print("The session has got into inactivation.")
    }
    
    // Called when all delegate callbacks for the previously selected watch has occurred. The session can be re-activated for the now selected watch using activateSession.
    @available(iOS 9.3, *)
    public func sessionDidDeactivate(_ session: WCSession) {
        print("The session has deactivated")
    }
    
    let wcSession:WCSession = WCSession.default()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //AppleWatch session start
        if WCSession.isSupported() {
            wcSession.delegate = self
            wcSession.activate()
            sendMessageForWatch()
        }

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sendMessageForWatch(){
        
    }


}

