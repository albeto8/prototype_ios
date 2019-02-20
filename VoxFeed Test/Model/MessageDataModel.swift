//
//  Message.swift
//  VoxFeed Test
//
//  Created by Mario  on 2/19/19.
//  Copyright © 2019 Mario . All rights reserved.
//

import Foundation

struct MessageDataModel: Decodable {
    let id: String
    let date: String
    let socialNetwork: String
    let user: [String: String]
    let campaign: [String: String]
    let brand: [String: String]
    let post: [String: String]
    let stats: [String: Int?]
    let earnings: Double
}
