//
//  FriendsSearchTableViewCell.swift
//  Friends
//
//  Created by User on 18.03.2021.
//

import UIKit

class FriendsSearchTableViewCell: UITableViewCell {

    @IBOutlet weak var friendAvatarImageView: UIImageView!
    @IBOutlet weak var friendSurnameNameFathersnameLabel: UILabel!
    @IBOutlet weak var friendPhoneNumberLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.friendAvatarImageView.layer.cornerRadius = 15
        self.friendAvatarImageView.layer.borderWidth = 1
        self.friendAvatarImageView.layer.borderColor = UIColor.black.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
