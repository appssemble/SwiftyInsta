//
//  LiveBroadcastResponse.swift
//  SwiftyInsta
//
//  Created by Appssemble on 14/01/2019.
//  Copyright © 2019 Mahdi. All rights reserved.
//

import Foundation

public class CreateLiveBroadcastResponse: Decodable {
    public var broadcastID: Int64
    public var uploadUrl: String
    
    private enum CodingKeys: String, CodingKey {
        case broadcastID = "broadcast_id"
        case uploadUrl = "upload_url"
    }
    
    public required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        broadcastID = try values.decode(Int64.self, forKey: .broadcastID)
        uploadUrl = try values.decode(String.self, forKey: .uploadUrl)
    }
}
