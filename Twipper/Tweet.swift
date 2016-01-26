//
//  Tweet.swift
//  Twipper
//
//  Created by Ramyatha Yugendernath on 1/24/16.
//  Copyright © 2016 Ramyatha Yugendernath. All rights reserved.
//

import Foundation
class Tweet {
    var tweetText: String?
    var userName: String?
    var createdAt: String?
    var pictureURL: NSURL?
    init (tweetText: String?, userName: String?, createdAt: String?, pictureURL : NSURL?) {
        self.tweetText = tweetText
        self.userName = userName
        self.createdAt = createdAt
        self.pictureURL = pictureURL
    }
}