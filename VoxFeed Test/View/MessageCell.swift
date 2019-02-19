//
//  MessageCell.swift
//  VoxFeed Test
//
//  Created by Mario  on 2/19/19.
//  Copyright © 2019 Mario . All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var socialNetwork: UILabel!
    @IBOutlet weak var postText: UILabel!
    @IBOutlet weak var dateText: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(messageViewModel: MessageViewModel) {
        userName.text = messageViewModel.userName
        socialNetwork.text = messageViewModel.socialNetwork
        postText.text = messageViewModel.postText
        dateText.text = messageViewModel.dateFormatted
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
