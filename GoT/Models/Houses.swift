//
//  Houses.swift
//  GoT
//
//  Created by Steeve Randriamampianina on 20/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import Foundation

//struct House: Decodable {
//    enum CodingKeys: String, CodingKey{
//        case name
//        case logoURL
//        case words
//
//    }
//    var name: String
//    var words: String
//    var logoURL: String
//
//}

struct House{
    var name: String
    var words: String
    var logoURL: String
}

extension House: Decodable {
    enum CodingKeys: String, CodingKey {
        case name
        case words
        case logoURL
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let name = try container.decode(String.self, forKey: .name)
        let words = try container.decodeIfPresent(String.self, forKey: .words)
        let logoURL = try container.decodeIfPresent(String.self, forKey: .logoURL)
        
        self.init(
            name: name,
            words: words ?? "",
            logoURL: logoURL ?? ""
        )
    }
}
