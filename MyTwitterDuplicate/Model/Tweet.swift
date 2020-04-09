//
//  Tweet.swift
//  MyTwitterDuplicate
//
//  Created by Eric Grant on 03.04.2020.
//  Copyright © 2020 Eric Grant. All rights reserved.
//

import UIKit

struct Tweet {
    let caption: String
    let tweeetID: String
    let uid: String
    let likes: Int
    var timestamp: Date!
    let retweetCount: Int
    var user: User
    
    init(user: User, tweetID: String, dictionary: [String: Any]) {
        self.user = user
        self.tweeetID = tweetID
        
        self.caption = dictionary["caption"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
        self.likes = dictionary["likes"] as? Int ?? 0
        self.retweetCount = dictionary["retweetCount"] as? Int ?? 0
        
        if let timestamp = dictionary["timestamp"] as? Double {
            self.timestamp = Date(timeIntervalSince1970: timestamp)
        }
    }
}

