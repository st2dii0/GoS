//
//  Houses.swift
//  GoT
//
//  Created by Steeve Randriamampianina on 20/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import Foundation

struct House: Decodable {
    enum CodingKeys: String, CodingKey{
        case name
//        case logoURL
        case words
        
    }
    var name: String
    var words: String
//    var logoURL: String
    
}
