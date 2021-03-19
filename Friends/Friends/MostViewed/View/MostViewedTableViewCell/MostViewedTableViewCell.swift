//
//  MostViewedTableViewCell.swift
//  Friends
//
//  Created by User on 18.03.2021.
//

import UIKit

class MostViewedTableViewCell: UITableViewCell {

    @IBOutlet weak var friendAvatarImageView: UIImageView!
    @IBOutlet weak var nameSurnameFathersNameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var favoriteCheckBoxView: MostViewedCheckboxView!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.friendAvatarImageView.layer.cornerRadius = 15
        self.friendAvatarImageView.layer.borderWidth = 1
        self.friendAvatarImageView.layer.borderColor = UIColor.black.cgColor
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    override func prepareForReuse() {
        favoriteCheckBoxView.isChecked = false
        
        favoriteCheckBoxView.setNeedsDisplay()
    }
    
}
