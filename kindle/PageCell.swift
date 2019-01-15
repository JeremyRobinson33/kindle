//
//  PageCell.swift
//  kindle
//
//  Created by Jeremy Robinson on 11/15/18.
//  Copyright © 2018 Jeremy Robinson. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Some text Some text Some text Some text Some text v Some text Some text Some text Some text"
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .yellow
        
        addSubview(textLabel)
        textLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        textLabel.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 10).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        textLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
