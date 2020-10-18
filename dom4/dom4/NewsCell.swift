//
//  NewsCell.swift
//  dom4
//
//  Created by Андрей on 18/10/2020.
//  Copyright © 2020 Андрей. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var newsInageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    static let identifier = "NewsCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  

}
