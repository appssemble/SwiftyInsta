//
//  HeartbeatAndViewerResponse.swift
//  SwiftyInsta
//
//  Created by Appssemble on 01/02/2019.
//  Copyright © 2019 Mahdi. All rights reserved.
//

import Foundation

public class HeartbeatAndViewerResponse: Decodable {
    public var viewerCount: Double
    public var broadcastStatus: String
    public var offsetToVideoStart: Int
    public var totalUniqueViewerCount: Int?
    public var isTopLiveEligible: Int?
    public var status: String
    
    private enum CodingKeys: String, CodingKey {
        case viewerCount = "viewer_count"
        case broadcastStatus = "broadcast_status"
        case offsetToVideoStart = "offset_to_video_start"
        case totalUniqueViewerCount = "total_unique_viewer_count"
        case isTopLiveEligible = "is_top_live_eligible"
        case status
    }
    
    public required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        viewerCount = try values.decode(Double.self, forKey: .viewerCount)
        broadcastStatus = try values.decode(String.self, forKey: .broadcastStatus)
        offsetToVideoStart = try values.decode(Int.self, forKey: .offsetToVideoStart)
        totalUniqueViewerCount = try values.decodeIfPresent(Int.self, forKey: .totalUniqueViewerCount)
        isTopLiveEligible = try values.decodeIfPresent(Int.self, forKey: .isTopLiveEligible)
        status = try values.decode(String.self, forKey: .status)
    }
}
