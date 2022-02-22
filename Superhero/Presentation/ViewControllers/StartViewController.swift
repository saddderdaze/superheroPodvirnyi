//
//  StartViewController.swift
//  Superhero
//
//  Created by Max Podvirnyi on 16.02.2022.
//

import UIKit

class StartViewController: UIViewController {
    
    var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func supermanAction() {
        coordinator?.showSupermanScreen()
    }
    
    @IBAction func supergirlAction() {
        coordinator?.showSupergirlScreen()
    }

}

