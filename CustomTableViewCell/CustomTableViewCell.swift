//
//  CustomTableViewCell.swift
//  CustomTableViewCell
//
//  Created by Ahmed Abuelmagd on 2/18/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    //Connections
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var elementImage: UIImageView!
    @IBOutlet weak var elementLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
