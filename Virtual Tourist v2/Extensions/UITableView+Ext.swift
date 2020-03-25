//
//  UITableView+Ext.swift
//  Virtual Tourist v2
//
//  Created by Aleksey on 0325..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

extension UITableView {
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
