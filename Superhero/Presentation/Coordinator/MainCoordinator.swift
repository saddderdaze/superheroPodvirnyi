//
//  MainCoordinator.swift
//  Superhero
//
//  Created by Max Podvirnyi on 16.02.2022.
//


import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start () {
        let storyboard = UIStoryboard(name: "Start", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "StartViewController")
        navigationController.setViewControllers([controller], animated: false)
    }
}
