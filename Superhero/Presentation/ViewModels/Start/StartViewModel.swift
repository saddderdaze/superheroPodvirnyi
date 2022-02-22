//
//  StartViewModel.swift
//  Superhero
//
//  Created by Max Podvirnyi on 22.02.2022.
//

import Foundation
import UIKit

struct StartViewModel {
    
    let maleButtonTitle = "Superman"
    let femaleButton = "Supergirl"
    
    func createProfile(with name: String) {
        ProfileManager.sharedInstance.createDefaultProfile(with: name)
    }
}
