//
//  MainVC-Extension+TableViewDelegate.swift
//  VoxFeed Test
//
//  Created by Mario  on 2/19/19.
//  Copyright © 2019 Mario . All rights reserved.
//

import Foundation
import UIKit

// MARK: - UITableView Delegate

extension MainViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DetailSegue", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
