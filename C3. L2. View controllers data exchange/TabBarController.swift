//
//  TabBarController.swift
//  C3. L2. View controllers data exchange
//
//  Created by Admin on 29/04/2019.
//  Copyright © 2019 Vladimir Tezin. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

    // MARK: - Navigation
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        guard viewController is ViewController && selectedViewController is ViewController else {
            return true
        }
        
        let shouldViewController = viewController as! ViewController
        let currentViewController = selectedViewController as! ViewController
        
        shouldViewController.eventsHistoryContainer = currentViewController.eventsHistoryContainer + "\n" + String(currentViewController.title ?? "") + " -> " + String(shouldViewController.title ?? "")
        
        return true
    }

}
