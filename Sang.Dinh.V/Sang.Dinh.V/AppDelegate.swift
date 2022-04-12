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
        window?.makeKeyAndVisible()
//        let homeVC = HomeVC()
//        let homeNV = UINavigationController(rootViewController: homeVC)
//        homeNV.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home.png"), selectedImage: UIImage(named: "home.png"))
//
//        let friendsVC = FriendsVC()
//        let friendsVN = UINavigationController(rootViewController: friendsVC)
//        friendsVN.tabBarItem = UITabBarItem(title: "Friends", image: UIImage(named: "friends"), selectedImage: UIImage(named: "friends"))
//        let settingVC = SettingVC()
//        let settingVN = UINavigationController(rootViewController: settingVC)
//        settingVN.tabBarItem = UITabBarItem(title: "Setting", image: UIImage(named: "setting"), selectedImage: UIImage(named: "setting"))
//        let videoVC = VideoVC()
//        let videoVN = UINavigationController(rootViewController: videoVC)
//        videoVN.tabBarItem = UITabBarItem(title: "Video", image: UIImage(named: "video"), selectedImage: UIImage(named: "video"))
//        let tabbar = UITabBarController()
//        tabbar.viewControllers = [homeNV,friendsVN,settingVN,videoVN]
//        let tabbar = TabBarViewController()
//        let listStudents = ListStudentsVC()
        let tableView = CustomTableVC()
        let navi = UINavigationController(rootViewController: tableView)
        window?.rootViewController =  navi
        window?.makeKeyAndVisible()
        return true
    }

 

}

