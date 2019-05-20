//
//  Character.swift
//  GoT
//
//  Created by Steeve Randriamampianina on 20/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import Foundation

struct Character: Decodable {
    enum CodingKeys: String, CodingKey {
        case name
    }
    var name: String
}
