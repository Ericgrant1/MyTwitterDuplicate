//
//  TweetHeader.swift
//  MyTwitterDuplicate
//
//  Created by Eric Grant on 07.04.2020.
//  Copyright © 2020 Eric Grant. All rights reserved.
//

import UIKit

class TweetHeader: UICollectionReusableView {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemIndigo
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


