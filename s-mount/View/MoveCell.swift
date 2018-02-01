//
//  MoveCell.swift
//  s-mount
//
//  Created by Dave Gumba on 2018-02-01.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

import UIKit
import BEMCheckBox

class MoveCell: UITableViewCell {
    
    @IBOutlet weak var moveNameLabel: UILabel!
    @IBOutlet weak var moveDescriptionLabel: UILabel!
    @IBOutlet weak var moveCheckBox: BEMCheckBox!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
