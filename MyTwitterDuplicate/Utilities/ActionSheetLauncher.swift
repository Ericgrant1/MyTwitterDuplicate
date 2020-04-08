//
//  ActionSheetLauncher.swift
//  MyTwitterDuplicate
//
//  Created by Eric Grant on 08.04.2020.
//  Copyright © 2020 Eric Grant. All rights reserved.
//

import UIKit

class ActionSheetLauncher: NSObject {
    
    // MARK: - Properties
    
    private let user: User
    
    init(user: User) {
        self.user = user
        super.init()
    }
    
    // MARK: - Helpers
    
    func show() {
        print("DEBUG: Show action sheet for user \(user.username)")
    }
}
