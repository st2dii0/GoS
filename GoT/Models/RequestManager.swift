//
//  RequestManager.swift
//  GoT
//
//  Created by Steeve Randriamampianina on 20/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import Foundation
import Alamofire

struct RequestManager {
    static func getHouses(success: @escaping (Data)-> (),
                          failure: @escaping(Error)->()){
        Alamofire.request("https://api.got.show/api/show/houses", method: .get)
            .responseData{(DataResponse) in
                switch DataResponse.result{
                case .success(let value):
                    success(value)
                case .failure(let error):
                    failure(error)
                }
            }
        }
}
