//
//  TabBarViewController.swift
//  Sang.Dinh.V
//
//  Created by Rin Sang on 06/04/2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarControllers()
        custom()

        // Do any additional setup after loading the view.
    }
    private func tabBarControllers(){
        let homeVC = HomeVC()
        let homeNV = UINavigationController(rootViewController: homeVC)
        homeNV.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home.png"), selectedImage: UIImage(named: "home.png"))

        let friendsVC = FriendsVC()
        let friendsVN = UINavigationController(rootViewController: friendsVC)
        friendsVN.tabBarItem = UITabBarItem(title: "Friends", image: UIImage(named: "friends"), selectedImage: UIImage(named: "friends"))
        let settingVC = SettingVC()
        let settingVN = UINavigationController(rootViewController: settingVC)
        settingVN.tabBarItem = UITabBarItem(title: "Setting", image: UIImage(named: "setting"), selectedImage: UIImage(named: "setting"))
        let videoVC = VideoVC()
        let videoVN = UINavigationController(rootViewController: videoVC)
        videoVN.tabBarItem = UITabBarItem(title: "Video", image: UIImage(named: "video"), selectedImage: UIImage(named: "video"))
        
        viewControllers = [homeNV,friendsVN,settingVN,videoVN]
        videoVN.tabBarItem.badgeValue = "99+"
        
    }
    func custom(){
        tabBar.tintColor = .red
    }

}
