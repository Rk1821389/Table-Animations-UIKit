//
//  AnimationTableVC.swift
//  TableAnimations
//
//  Created by Manoj kumar on 11/02/23.
//

import UIKit

class AnimationTableVC: UITableViewController {

    var animationType: TableViewAnimationType = .fade
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TableViewAnimations.animateTableView(tableView: self.tableView, animationType: animationType)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 20
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animationCell", for: indexPath)
        cell.textLabel?.text = "Cell No\(indexPath.row)"
        return cell
    }
    

    

}
