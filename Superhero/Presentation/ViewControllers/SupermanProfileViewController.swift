//
//  SupermanProfileViewController.swift
//  Superhero
//
//  Created by Max Podvirnyi on 22.02.2022.
//

import UIKit

class SupermanProfileViewController: UIViewController {
    

    @IBOutlet weak var gradientView: UIView!
    
    var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
}
