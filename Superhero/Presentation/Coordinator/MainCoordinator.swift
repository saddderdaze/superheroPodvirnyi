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
    
    func showMenuScreen(for gender: Gender) {
        let storyboard = UIStoryboard(name: "Menu", bundle: nil)
        if let controller = storyboard.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController {
            controller.coordinator = self
            controller.gender = gender
            navigationController.pushViewController(controller, animated: true)
        }
    }
    
    func showProfileScreen(for gender: Gender) {
        let storyboard = UIStoryboard(name: "Profile", bundle: nil)
        if let controller = storyboard.instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController {
            controller.coordinator = self
            controller.gender = gender
            navigationController.pushViewController(controller, animated: true)
        }
    }
    
}
