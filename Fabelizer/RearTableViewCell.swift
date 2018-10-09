//
//  RearTableViewCell.swift
//  Fabelizer
//
//  Created by Infinitum on 08/10/18.
//  Copyright © 2018 Infinitumus.com. All rights reserved.
//

import UIKit

class RearTableViewCell: UITableViewCell {

    @IBOutlet weak var tittlelbl: UILabel!
    @IBOutlet weak var iconImgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
