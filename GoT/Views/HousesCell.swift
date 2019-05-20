//
//  HouseCell.swift
//  GoT
//
//  Created by Steeve Randriamampianina on 20/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import UIKit
import SDWebImage

class HousesCell: UITableViewCell {
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var WordsLabel: UILabel!
    @IBOutlet weak var imageHouse: UIImageView!
    
//    @IBOutlet weak var LogoURLLabel: UILabel!
    
    func configure(withHouse house: House?){
        NameLabel.text = house!.name
        WordsLabel.text = house!.words
        imageHouse.sd_setImage(with: URL(string: (house?.logoURL)!), completed: nil)
    }
}
