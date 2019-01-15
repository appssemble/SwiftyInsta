//
//  StartLiveBroadcastResponse.swift
//  SwiftyInsta
//
//  Created by Appssemble on 15/01/2019.
//  Copyright © 2019 Mahdi. All rights reserved.
//

import Foundation

public class StartLiveBroadcastResponse: Decodable {
    var mediaID: String
    var status: String

    private enum CodingKeys: String, CodingKey {
        case mediaID = "media_id"
        case status
    }
    
    public required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        mediaID = try values.decode(String.self, forKey: .mediaID)
        status = try values.decode(String.self, forKey: .status)
    }
}
