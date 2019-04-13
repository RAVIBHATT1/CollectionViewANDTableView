//
//  MyTableViewCell.swift
//  CollectionViewANDTableView
//
//  Created by Akash Padhiyar on 12/04/19.
//  Copyright © 2019 Akash Padhiyar. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet weak var MyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
