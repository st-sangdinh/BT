//
//  HomeViViewController.swift
//  Sang.Dinh.V
//
//  Created by Rin Sang on 05/04/2022.
//

import UIKit

class BT1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let userView = UserView(frame: CGRect(x: 0, y: 0, width: 100, height: 130))
        view.backgroundColor = .white
        view.addSubview(userView)
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
