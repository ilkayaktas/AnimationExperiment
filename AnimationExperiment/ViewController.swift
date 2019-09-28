//
//  ViewController.swift
//  AnimationExperiment
//
//  Created by İlkay Aktaş on 25.09.2019.
//  Copyright © 2019 İlkay Aktaş. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animationTableView: UITableView!
    
    let animationList = [
        "Spring",
        "SPStorkController",
        "Hero"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animationTableView.delegate = self
        animationTableView.dataSource = self
        
    }

}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animationList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell")  as! TableViewCell
        
        cell.icon.image = UIImage(named: "\(indexPath.row)")
        cell.label.text = animationList[indexPath.row]
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

            if(canPerformSegue(withIdentifier: "\(animationList[indexPath.row])Segue")){
                performSegue(withIdentifier: "\(animationList[indexPath.row])Segue", sender: self)
            } else{
                print("Segue is not available!")
            }
    }
    
}

extension UIViewController {
    func canPerformSegue(withIdentifier id: String) -> Bool {
        guard let segues = self.value(forKey: "storyboardSegueTemplates") as? [NSObject] else { return false }
        return segues.first { $0.value(forKey: "identifier") as? String == id } != nil
    }

    /// Performs segue with passed identifier, if self can perform it.
    func performSegueIfPossible(id: String?, sender: AnyObject? = nil) {
        guard let id = id, canPerformSegue(withIdentifier: id) else { return }
        self.performSegue(withIdentifier: id, sender: sender)
    }
}

