//
//  ProfileManager.swift
//  Superhero
//
//  Created by Max Podvirnyi on 22.02.2022.
//

import UIKit
import CoreData

class ProfileManager {
    
    static let sharedInstance = ProfileManager()
    
    lazy var mainContext: NSManagedObjectContext = {
        return self.storeContainer.viewContext
        
    }()
    
    private lazy var storeContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "ProfileCoreData")
        container.loadPersistentStores {
            storeDescription, error in if let error = error as NSError? {
            print("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    var userProfile: Profile?
    
    func createDefaultProfile(with gender: String) {
        let entity = NSEntityDescription.entity(forEntityName: "Profile", in: mainContext)
        userProfile = Profile(entity: entity!, insertInto: mainContext)
        
        userProfile?.sex = gender
        
        saveProfileInfo()
    }
    
    func saveProfileInfo(){
        guard mainContext.hasChanges else { return }
        
        do {
            try mainContext.save()
        }
        catch let nserror as NSError {
            fatalError ("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
    
    func retrieveSavedProfile() {
        let profileFetchRequest: NSFetchRequest<Profile> = Profile.fetchRequest()
        do {
            let result = try mainContext.fetch(profileFetchRequest)
            if result.count > 0 {
                userProfile = result.first
            } else {
                userProfile = nil
            }
        } catch let error as NSError {
            print("Error: \(error) description: \(error.userInfo)")
        }
    }
}
