//
//  ViewController.swift
//  C3. L2. View controllers data exchange
//
//  Created by Admin on 29/04/2019.
//  Copyright © 2019 Vladimir Tezin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    ///container for collecting of events history
    var eventsHistoryContainer:String = ""
    
    @IBOutlet var eventsHistoryTextView: UITextView!
    
    ///getting string of event description
    private func getStringOfEventDescription(function:String = #function, line:Int = #line) ->String {
       return title! + " | " + function + " | " + String(line)
    }
    
    ///adding new string to eventsHistoryContainer
    private func addEventDescriptionToContainer(addString:String) {
        eventsHistoryContainer += "\n" + addString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEventDescriptionToContainer(addString:getStringOfEventDescription())
    }

    override func viewWillAppear(_ animated: Bool) {
        addEventDescriptionToContainer(addString:getStringOfEventDescription())
    }

    override func viewWillDisappear(_ animated: Bool) {
        addEventDescriptionToContainer(addString:getStringOfEventDescription())
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        addEventDescriptionToContainer(addString:getStringOfEventDescription())
        
        guard let eventsHistoryTextView = eventsHistoryTextView else {
            return
        }
        
        //show events history
        eventsHistoryTextView.text = eventsHistoryContainer
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        addEventDescriptionToContainer(addString:getStringOfEventDescription())
    }
    
    override func viewWillLayoutSubviews() {
        addEventDescriptionToContainer(addString:getStringOfEventDescription())
    }
    
    override func viewDidLayoutSubviews() {
        addEventDescriptionToContainer(addString:getStringOfEventDescription())
    }
    
}

