//
//  ViewController.swift
//  VoxFeed Test
//
//  Created by Mario  on 2/19/19.
//  Copyright © 2019 Mario . All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var messages = [MessageViewModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        Service.shared.fetchCourses { (data) in
            do {
                let decodedData = try JSONDecoder().decode([MessageDataModel].self, from: data!)
                self.messages = decodedData.map({return MessageViewModel(messageDataModel: $0)})
                self.tableView.reloadData()
            } catch {
                print(error)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailSegue" {
            if let destinationViewController = segue.destination as? DetailViewController {
                let indexPath = self.tableView.indexPathForSelectedRow!
                let index = indexPath.row
                destinationViewController.messageViewModel = messages[index]
            }
        }
    }
}

