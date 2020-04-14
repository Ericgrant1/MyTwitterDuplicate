//
//  EditProfileCell.swift
//  MyTwitterDuplicate
//
//  Created by Eric Grant on 14.04.2020.
//  Copyright © 2020 Eric Grant. All rights reserved.
//

import UIKit

class EditProfileCell: UITableViewCell {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .systemTeal
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
}
