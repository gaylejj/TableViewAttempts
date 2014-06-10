//
//  TableViewCell.swift
//  TableViewTest
//
//  Created by Jeff Gayle on 6/4/14.
//  Copyright (c) 2014 Jeff Gayle. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel : UILabel = nil
    @IBOutlet var contentLabel : UILabel = nil
    @IBOutlet var titleLabel : UILabel = nil

    init(style: UITableViewCellStyle, reuseIdentifier: String) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Initialization code
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
