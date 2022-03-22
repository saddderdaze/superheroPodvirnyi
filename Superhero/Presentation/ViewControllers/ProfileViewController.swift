//
//  ProfileViewController.swift
//  Superhero
//
//  Created by Max Podvirnyi on 20.03.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    

    
    
    @IBOutlet weak var gradientView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        
        navigationItem.title = "Profile"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(saveAction))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        super.viewWillAppear(animated)
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
    
    @objc func saveAction() {
        print("saveAction")
    }
    
    

}
