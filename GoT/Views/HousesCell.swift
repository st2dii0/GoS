//
//  HouseCell.swift
//  GoT
//
//  Created by Steeve Randriamampianina on 20/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import UIKit

class HousesCell: UITableViewCell {
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var WordsLabel: UILabel!

//    @IBOutlet weak var LogoURLLabel: UILabel!
    
    func configure(withHouse house: House?){
        NameLabel.text = house?.name
        WordsLabel.text = house?.words
    }
}
