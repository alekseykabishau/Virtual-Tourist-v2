//
//  PlaceCell.swift
//  Virtual Tourist v2
//
//  Created by Aleksey on 0325..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class PlaceCell: UITableViewCell {
    
    static let reuseID = "PlaceCell"
    
    let placeNameLabel = UILabel()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        addSubview(placeNameLabel)
        
        accessoryType = .disclosureIndicator
        
        let padding: CGFloat = 20
        
        NSLayoutConstraint.activate([
            placeNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            placeNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            placeNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            placeNameLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
