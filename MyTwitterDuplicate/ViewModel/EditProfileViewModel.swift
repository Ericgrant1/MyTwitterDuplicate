//
//  EditProfileViewModel.swift
//  MyTwitterDuplicate
//
//  Created by Eric Grant on 14.04.2020.
//  Copyright © 2020 Eric Grant. All rights reserved.
//

import UIKit

enum EditProfileOptions: Int, CaseIterable {
    case fullname
    case username
    case bio
    
    var description: String {
        switch self {

        case .fullname: return "Name"
        case .username: return "Username"
        case .bio: return "Bio"
        }
    }
}
