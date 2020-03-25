//
//  VTTabBarController.swift
//  Virtual Tourist v2
//
//  Created by Aleksey on 0325..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class VTTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [createPlacesMapVC(), createPlacesListVC()]
    }
    
    // func create map vc
    func createPlacesMapVC() -> UINavigationController {
        let placesMapVC = PlacesMapVC()
        placesMapVC.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        return UINavigationController(rootViewController: placesMapVC)
    }
    
    
    // func create list vc
    func createPlacesListVC() -> UINavigationController {
        let placesListVC = PlacesListVC()
        placesListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        return UINavigationController(rootViewController: placesListVC)
    }
}
