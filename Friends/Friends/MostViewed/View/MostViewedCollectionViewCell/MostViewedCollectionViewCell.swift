//
//  MostViewedCollectionViewCell.swift
//  Friends
//
//  Created by User on 18.03.2021.
//

import UIKit

class MostViewedCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var favoriteFriendName: UILabel!
    @IBOutlet weak var favoriteFriendAvatarImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.favoriteFriendAvatarImageView.layer.cornerRadius = 15
        self.favoriteFriendAvatarImageView.layer.borderWidth = 1
        self.favoriteFriendAvatarImageView.layer.borderColor = UIColor.black.cgColor
        
    }

}
