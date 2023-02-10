//
//  ViewController.swift
//  TableAnimations
//
//  Created by Manoj kumar on 10/02/23.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var selectedIndex: Int?
    
    private let animationTypes: [TableViewAnimationType] = [.fade, .rightToLeft, .leftToRight, .topToBottom, .bottomToTop, .scaleUp, .rotate, .bounce]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let animationTableVC = segue.destination as? AnimationTableVC else { return }
        animationTableVC.navigationItem.title = "\(animationTypes[selectedIndex!])"
        animationTableVC.animationType = animationTypes[selectedIndex!]
    }
    
}

//MARK: - TableViewDataSource

extension MainVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animationTypes.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath)
            cell.textLabel?.text = "\(animationTypes[indexPath.row])"
            return cell
    }
    
}

//MARK: - TableViewDelegate

extension MainVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        self.performSegue(withIdentifier: "AnimationTableVC", sender: self)
    }
}
