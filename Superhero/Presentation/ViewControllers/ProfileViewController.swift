//
//  ProfileViewController.swift
//  Superhero
//
//  Created by Max Podvirnyi on 20.03.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var gradientView: UIView!
    
    var gender: Gender?
    var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setGradientBackground()
        
        switch gender {
        case .male:
            backgroundImageView.image = UIImage(named: "supermanImage")
        case .female:
            backgroundImageView.image = UIImage(named: "supergirlImage")
        case .none:
            break
        }
        
        navigationController?.navigationBar.tintColor = UIColor(red: 0.906, green: 0.769, blue: 0.345, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.title = "Profile"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(saveAction))
    }
    
    func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.black.withAlphaComponent(0.0).cgColor,
            UIColor.black.withAlphaComponent(0.84).cgColor,
            UIColor.black.withAlphaComponent(1.0).cgColor,
        ]
        gradientLayer.locations = [0.0, 0.48, 1.0]
        gradientLayer.bounds = view.bounds
        gradientLayer.position = view.center
        gradientView.layer.addSublayer(gradientLayer)
    }
    
    @objc func saveAction(){
        
    }
}
