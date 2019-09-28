//
//  SPStorkViewController.swift
//  AnimationExperiment
//
//  Created by İlkay Aktaş on 28.09.2019.
//  Copyright © 2019 İlkay Aktaş. All rights reserved.
//

import UIKit
import SPStorkController
import SPAlert

class SPStorkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showViewController(_ sender: Any) {
        let modal = ModalViewController()
        let transitionDelegate = SPStorkTransitioningDelegate()
        transitionDelegate.storkDelegate = self
        transitionDelegate.confirmDelegate = modal
        modal.transitioningDelegate = transitionDelegate
        modal.modalPresentationStyle = .custom
        self.present(modal, animated: true, completion: nil)
    }
    
    @IBAction func showCustomSizedViewController(_ sender: Any) {
        let modal = ModalViewController()
        let transitionDelegate = SPStorkTransitioningDelegate()
        transitionDelegate.storkDelegate = self
        transitionDelegate.confirmDelegate = modal
        transitionDelegate.showCloseButton = true
        transitionDelegate.customHeight = 400
        modal.transitioningDelegate = transitionDelegate
        modal.modalPresentationStyle = .custom
        self.present(modal, animated: true, completion: nil)
    }
    
    @IBAction func showWithConfirm(_ sender: Any) {
        let modal = ModalTableViewController()
        let transitionDelegate = SPStorkTransitioningDelegate()
        transitionDelegate.storkDelegate = self
        transitionDelegate.confirmDelegate = modal
        modal.transitioningDelegate = transitionDelegate
        modal.modalPresentationStyle = .custom
        self.present(modal, animated: true, completion: nil)
    }

}


extension SPStorkViewController: SPStorkControllerDelegate {
    
    func didDismissStorkByTap() {
        SPAlert.present(title: "Dismised by tap", preset: .done)
    }
    
    func didDismissStorkBySwipe() {
        let alert = SPAlertView(title: "Danger", message: "Dismissed by swipe", image: UIImage(named: "44")!)
        alert.layer.cornerRadius = 20
        alert.present()
    }
}
