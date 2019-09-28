//
//  HeroViewController.swift
//  AnimationExperiment
//
//  Created by İlkay Aktaş on 28.09.2019.
//  Copyright © 2019 İlkay Aktaş. All rights reserved.
//

import UIKit
import Hero

class HeroViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func showFirstSample(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Hero", bundle: nil).instantiateInitialViewController()!
        
        DispatchQueue.main.async {
          self.present(storyboard, animated: true, completion: nil)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
