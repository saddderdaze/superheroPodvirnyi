//
//  MenuViewController.swift
//  Superhero
//
//  Created by Max Podvirnyi on 22.02.2022.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var gradientView: UIView!
    
    var coordinator: MainCoordinator?
    var gender: Gender?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setGradientBackground()

        switch gender {
        case .male:
            // setup male
            titleLabel.text = "Superman"
            backgroundImageView.image = UIImage(named: "supermanImage")
            // imageView.image = maleImage
            break
        case .female:
            // setup female
            titleLabel.text = "Supergirl"
            backgroundImageView.image = UIImage(named: "supergirlImage")
            // imageView.image = femaleImage
            break
        case .none:
            break
        }
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
    
    @IBAction func profileaction() {
        guard let gender = gender else {
            return
        }
        
        coordinator?.showProfileScreen(for: gender)
    }
}
