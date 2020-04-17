//
//  NotificationViewModel.swift
//  MyTwitterDuplicate
//
//  Created by Eric Grant on 11.04.2020.
//  Copyright © 2020 Eric Grant. All rights reserved.
//

import UIKit

struct NotificationViewModel {
    
    private let notification: Notification
    private let type: NotificationType
    private let user: User
    
    var timestampString: String? {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second, .minute, .hour, .day, .month]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .abbreviated
        let now = Date()
        return formatter.string(from: notification.timestamp, to: now) ?? "10m"
    }
    
    var notificationMessage: String {
        switch type {
        case .follow: return " started following you"
        case .like: return " liked your tweets"
        case .reply: return " replied to your tweet"
        case .retweet: return " retweeted your tweet"
        case .mention: return " mentioned you in a tweet"
        }
    }
    
    var notificationText:  NSAttributedString? {
        guard let timestamp = timestampString else { return nil }
        let attributedText = NSMutableAttributedString(string: user.username,
                                              attributes: [.font: UIFont.boldSystemFont(ofSize: 12)])
        attributedText.append(NSAttributedString(string: notificationMessage,
            attributes: [.font: UIFont.systemFont(ofSize: 12),
                         .foregroundColor: UIColor.lightGray]))
        
        attributedText.append(NSAttributedString(string: "・\(timestamp)",
        attributes: [.font: UIFont.systemFont(ofSize: 12),
                     .foregroundColor: UIColor.lightGray]))
        
        return attributedText
    }
    
    var profileImageUrl: URL? {
        return user.profileImageUrl
    }
    
    var shouldHideFollowButton: Bool {
        return type != .follow
    }
    
    var followedButtonText: String {
        return user.isFollowed ? "Following" : "Follow"
    }
    
    init(notification: Notification) {
        self.notification = notification
        self.type = notification.type
        self.user = notification.user
    }
}
