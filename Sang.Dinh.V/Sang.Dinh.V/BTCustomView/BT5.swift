//
//  BT5.swift
//  Sang.Dinh.V
//
//  Created by Rin Sang on 05/04/2022.
//

import UIKit

class BT5: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let userView1 = UserView(frame: CGRect(x: 0, y: 0, width: 100, height: 130))
        userView1.userName?.text = "Name 1"
        userView1.buttonDidClick()
            
        view.addSubview(userView1)
        let userView2 = UserView(frame: CGRect(x: 120, y: 0, width: 100, height: 130))
        userView2.userName?.text = "Name 2"
        view.addSubview(userView2)
        let userView3 = UserView(frame: CGRect(x: 240, y: 0, width: 100, height: 130))
        userView3.userName?.text = "Name 3"
        view.addSubview(userView3)
        let userView4 = UserView(frame: CGRect(x: 0, y: 160, width: 100, height: 130))
        userView4.userName?.text = "Name 4"
        view.addSubview(userView4)
        let userView5 = UserView(frame: CGRect(x: 120, y: 160, width: 100, height: 130))
        userView5.userName?.text = "Name 5"
        view.addSubview(userView5)
        let userView6 = UserView(frame: CGRect(x: 240, y: 160, width: 100, height: 130))
        userView6.userName?.text = "Name 6"
        view.addSubview(userView6)
        let userView7 = UserView(frame: CGRect(x: 0, y: 320, width: 100, height: 130))
        userView7.userName?.text = "Name 7"
        view.addSubview(userView7)
        let userView8 = UserView(frame: CGRect(x: 120, y: 320, width: 100, height: 130))
        userView8.userName?.text = "Name 8"
        view.addSubview(userView8)
        let userView9 = UserView(frame: CGRect(x: 240, y: 320, width: 100, height: 130))
        userView9.userName?.text = "Name 9"
        view.addSubview(userView9)
        let userView10 = UserView(frame: CGRect(x: 0, y: 480, width: 100, height: 130))
        userView10.userName?.text = "Name 10"
        view.addSubview(userView10)
        let userView11 = UserView(frame: CGRect(x: 120, y: 480, width: 100, height: 130))
        userView11.userName?.text = "Name 11"
        view.addSubview(userView11)
        let userView12 = UserView(frame: CGRect(x: 240, y: 480, width: 100, height: 130))
        userView12.userName?.text = "Name 12"
        view.addSubview(userView12)

        // Do any additional setup after loading the view.
    }
    


}
