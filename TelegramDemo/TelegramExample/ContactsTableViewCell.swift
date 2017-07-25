//
//  ContactsTableViewCell.swift
//  TelegramExample
//
//  Created by Fateme' Kazemi on 4/20/1396 AP.
//  Copyright © 1396 Fateme' Kazemi. All rights reserved.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {

    @IBOutlet weak var imgContac: UIImageView!
    @IBOutlet weak var lbContact: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
