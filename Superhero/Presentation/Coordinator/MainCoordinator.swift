//
//  MainCoordinator.swift
//  Superhero
//
//  Created by Max Podvirnyi on 16.02.2022.
//


import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let storyboard = UIStoryboard(name: "Start", bundle: nil)
        if let controller = storyboard.instantiateViewController(withIdentifier: "StartViewController") as? StartViewController {
            controller.coordinator = self
            navigationController.setViewControllers([controller], animated: false)
        }
    }
    
    func showSupermanScreen() {
        let storyboard = UIStoryboard(name: "Superman", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SupermanProfileViewController")
        navigationController.pushViewController(controller, animated: true)
    }
    
    func showSupergirlScreen() {
        let storyboard = UIStoryboard(name: "Supergirl", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SupergirlProfileViewController")
        navigationController.pushViewController(controller, animated: true)
    }
}
