//
//  UserService.swift
//  MyTwitterDuplicate
//
//  Created by Eric Grant on 02.04.2020.
//  Copyright © 2020 Eric Grant. All rights reserved.
//

import UIKit
import Firebase

struct UserService {
    static let shared = UserService()
    
    func fetchUser(uid: String, conpletion: @escaping(User) -> Void) {
        
        REF_USERS.child(uid).observeSingleEvent(of: .value) { snapshot in
            guard let dictionary = snapshot.value as? [String: AnyObject] else { return }
            
            let user = User(uid: uid, dictionary: dictionary)
            conpletion(user)
        }
    }
}
