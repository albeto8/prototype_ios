//
//  Message.swift
//  VoxFeed Test
//
//  Created by Mario  on 2/19/19.
//  Copyright © 2019 Mario . All rights reserved.
//

import Foundation

struct MessageDataModel {
    let id: String
    let socialNetwork: String
    let imageLink:  String
}

let message1 = MessageDataModel(id: "1", socialNetwork: "facebook", imageLink: "https://assets.voxfeed.com/apps-development-test/post-image1.jpg")
let message2 = MessageDataModel(id: "2", socialNetwork: "twitter", imageLink: "https://assets.voxfeed.com/apps-development-test/post-image1.jpg")
