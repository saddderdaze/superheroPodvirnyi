//
//  Coordinator.swift
//  Superhero
//
//  Created by Max Podvirnyi on 16.02.2022.
//

import UIKit

protocol Coordinator {
    
    var navigationController: UINavigationController { get set }
    
    func start()
}
