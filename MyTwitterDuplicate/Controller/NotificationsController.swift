//
//  NotificationsController.swift
//  MyTwitterDuplicate
//
//  Created by Eric Grant on 29.03.2020.
//  Copyright © 2020 Eric Grant. All rights reserved.
//

import Foundation
import UIKit

class NotificationsController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Notifications"
    }
    
}
