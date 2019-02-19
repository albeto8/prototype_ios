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
    let date: String
    let socialNetwork: String
    let user: User
    let campaign: Campaign
    let Brand: Brand
    let post: Post
    let stats: Stats
    let earnings: Int
}

struct User {
    let userName: String
    let profileImage: String
}

struct Campaign {
    let name: String
    let coverImage: String
}

struct Brand {
    let name: String
    let logo: String
}

struct Post {
    let text: String
    let image: String
    let link: String
}

struct Stats {
    let clicks: Int
    let shares: Int
    let likes: Int
    let comments: Int
    let audience: Int
}

let stats = Stats(clicks: 20, shares: 10, likes: 11, comments: 34, audience: 15)
let post = Post(text: "#DaredevilReturns con la nueva temporada en primavera, por si no saben que hacer el próximo fin. #NetflixLoTiene #MarvelSeries", image: "https://assets.voxfeed.com/apps-development-test/post-image1.jpg", link: "https://www.facebook.com/VoxFeed/posts/753620444739473")
let brand = Brand(name: "Netflix", logo: "https://assets.voxfeed.com/apps-development-test/campaign-brand1.png")
let campaign = Campaign(name: "Daredevil", coverImage: "https://assets.voxfeed.com/apps-development-test/campaign-cover1.jpg")
let user = User(userName: "GeekZone", profileImage: "https://assets.voxfeed.com/apps-development-test/profile-image1.png")

let message1 = MessageDataModel(id: "1", date: "2016-09-01T06:00:00.000Z", socialNetwork: "Facebook", user: user, campaign: campaign, Brand: brand, post: post, stats: stats, earnings: 120)

let message2 = MessageDataModel(id: "1", date: "2016-09-01T06:00:00.000Z", socialNetwork: "Facebook", user: user, campaign: campaign, Brand: brand, post: post, stats: stats, earnings: 120)

