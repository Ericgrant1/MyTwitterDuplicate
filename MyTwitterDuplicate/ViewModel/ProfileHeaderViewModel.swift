//
//  ProfileHeaderViewModel.swift
//  MyTwitterDuplicate
//
//  Created by Eric Grant on 05.04.2020.
//  Copyright © 2020 Eric Grant. All rights reserved.
//

import UIKit

enum ProfileFilterOptions: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var description: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Tweets & Replies"
        case .likes: return "Likes"
        }
    }
}
