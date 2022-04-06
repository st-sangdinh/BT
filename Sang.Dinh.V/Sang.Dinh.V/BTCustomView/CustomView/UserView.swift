//
//  UserView.swift
//  Sang.Dinh.V
//
//  Created by Rin Sang on 05/04/2022.
//

import UIKit

class UserView: UIView {
    var avatar: UIImageView?
    var userName: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //Add user avatar
        let userAvatar = UIImageView(image: UIImage(named:"ava.jpeg"))
        let frame = CGRect(x: 50, y: 100, width: 100, height: 100)
        userAvatar.frame = frame
        userAvatar.contentMode = .scaleToFill
        addSubview(userAvatar)
            
        //Add userName
        userName = UILabel(frame: CGRect(x: 50, y: 200, width: 100, height: 50))
        userName?.text = "User Name"
        userName?.backgroundColor = .lightGray
        userName?.textColor = .red
        addSubview(userName!)
    
//        Add button
        let button = UIButton(frame: CGRect(x: 50, y: 100, width: 200, height: 250))
        button.backgroundColor = .clear
        button.addTarget(self, action: #selector(buttonDidClick), for: .touchUpInside)
        addSubview(button)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func buttonDidClick() {
        let unwrap = userName?.text
            print("select \(unwrap!)")
    }
    
}
