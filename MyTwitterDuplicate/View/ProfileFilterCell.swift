//
//  ProfileFilterCell.swift
//  MyTwitterDuplicate
//
//  Created by Eric Grant on 05.04.2020.
//  Copyright © 2020 Eric Grant. All rights reserved.
//

import UIKit

class ProfileFilterCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    let tittleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "Test filter"
        return label
    }()
    
    override var isSelected: Bool {
        didSet {
            tittleLabel.font = isSelected ? UIFont.boldSystemFont(ofSize: 16) : UIFont.systemFont(ofSize: 14)
            tittleLabel.textColor = isSelected ? .twitterBlue : .lightGray
        }
    }
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubview(tittleLabel)
        tittleLabel.center(inView: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

