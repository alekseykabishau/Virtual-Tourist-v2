//
//  PlacesListVC.swift
//  Virtual Tourist v2
//
//  Created by Aleksey on 0325..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class PlacesListVC: UIViewController {
    
    let tableView = UITableView()
    var places = ["Minsk", "New York", "Philadelphia"]

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureTableView()
        
    }
    
    private func configureViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    private func configureTableView() {
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.rowHeight = 80
        tableView.removeExcessCells()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(PlaceCell.self, forCellReuseIdentifier: PlaceCell.reuseID)
    }
}

extension PlacesListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PlaceCell.reuseID, for: indexPath) as! PlaceCell
        cell.set(place: places[indexPath.row])
        return cell
    }
}
