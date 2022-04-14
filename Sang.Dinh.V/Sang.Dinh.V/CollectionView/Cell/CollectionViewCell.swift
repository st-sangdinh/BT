//
//  CollectionViewCell.swift
//  Sang.Dinh.V
//
//  Created by Rin Sang on 12/04/2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setData(_ student: Student){
        imageView.image = UIImage(named: "ava")
        labelView.text = student.name
    }
    

}
