//
//  CustomTableViewCell.swift
//  Sang.Dinh.V
//
//  Created by Rin Sang on 08/04/2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarIMG: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var noteLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(_ student: Student){
        avatarIMG.image = UIImage(named: "ava")
        nameLabel.text = student.name
        noteLable.text = "\(student.id)"
    }
    
}
