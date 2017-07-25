//
//  ChatsTableViewCell.swift
//  TelegramExample
//
//  Created by Fateme' Kazemi on 4/20/1396 AP.
//  Copyright © 1396 Fateme' Kazemi. All rights reserved.
//

import UIKit

class ChatsTableViewCell: UITableViewCell {

    @IBOutlet weak var lbChat: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
