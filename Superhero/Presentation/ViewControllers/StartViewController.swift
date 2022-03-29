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
        coordinator?.showMenuScreen(for: .male)
    }
    
    @IBAction func supergirlAction() {
        coordinator?.showMenuScreen(for: .female)
    }

}

