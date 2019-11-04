//
//  imageCell.swift
//  TableViewPractise
//
//  Created by Valerian   on 10/29/19.
//  Copyright © 2019 Valerian  . All rights reserved.
//

import UIKit

class imageCell: UITableViewCell {
    
    @IBOutlet weak var imaggeViewCell: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func setImage(image: Picture) {
        imaggeViewCell.image = image.image
        titleLabel.text = image.title
    }

}
