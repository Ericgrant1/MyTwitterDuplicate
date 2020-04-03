//
//  TweetCell.swift
//  MyTwitterDuplicate
//
//  Created by Eric Grant on 03.04.2020.
//  Copyright © 2020 Eric Grant. All rights reserved.
//

import UIKit

class TweetCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
