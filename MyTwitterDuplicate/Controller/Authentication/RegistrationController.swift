//
//  RegistrationController.swift
//  MyTwitterDuplicate
//
//  Created by Eric Grant on 30.03.2020.
//  Copyright © 2020 Eric Grant. All rights reserved.
//

import UIKit

class RegistrationController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK: - Selectors
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .twitterBlue
    }
}
