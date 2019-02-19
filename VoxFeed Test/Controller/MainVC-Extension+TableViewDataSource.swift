//
//  MainVC-Extension+TableViewDataSource.swift
//  VoxFeed Test
//
//  Created by Mario  on 2/19/19.
//  Copyright © 2019 Mario . All rights reserved.
//

import Foundation

import UIKit

// MARK: - UITableView Data Source

extension MainViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageViewModel.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? MessageCell {
            //tableViewCell?.imageView?.image = UIImage(named: messierViewModel[indexPath.row].thumbnail)
            tableViewCell.configureCell(messageViewModel: messageViewModel[indexPath.row])
            return tableViewCell
        }
        return MessageCell()
    }
    
}
