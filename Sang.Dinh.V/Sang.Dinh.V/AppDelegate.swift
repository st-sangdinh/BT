//
//  AppDelegate.swift
//  Sang.Dinh.V
//
//  Created by Rin Sang on 05/04/2022.
//

import UIKit

 @main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let tableView = BT6ViewController()
        let navi = UINavigationController(rootViewController: tableView)
        window?.rootViewController =  navi
        window?.makeKeyAndVisible()
        return true
    }

 

}

