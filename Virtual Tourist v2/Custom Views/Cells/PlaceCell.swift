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
    
    private let placeNameLabel = UILabel()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(place: String) {
        placeNameLabel.text = place
    }
    
    
    private func configure() {
        addSubview(placeNameLabel)
        //TODO: - consider creation Title Label class and move there
        placeNameLabel.textAlignment = .left
        placeNameLabel.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        placeNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
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
