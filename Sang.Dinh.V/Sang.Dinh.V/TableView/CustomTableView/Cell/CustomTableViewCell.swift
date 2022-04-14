//
//  CustomTableViewCell.swift
//  Sang.Dinh.V
//
//  Created by Rin Sang on 08/04/2022.
//

import UIKit
protocol callButton: class{
    func callName(name: CustomTableViewCell)
}
class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var avatarIMG: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var noteLable: UILabel!
    weak var delegate: callButton?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func setData(_ student: Student){
      
        avatarIMG.image = UIImage(named: "ava")
        nameLabel.text = student.name
        noteLable.text = "\(student.id)"
    }
    
    @IBAction func button(_ sender: Any) {

        delegate?.callName(name: self)
    }
    
}
