//
//  ListCell.swift
//  Realm DataBase
//
//  Created by Mac on 27/11/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var lblDob: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgProfile: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
