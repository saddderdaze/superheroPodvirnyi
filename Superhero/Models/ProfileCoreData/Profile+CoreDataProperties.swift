//
//  Profile+CoreDataProperties.swift
//  Superhero
//
//  Created by Max Podvirnyi on 22.02.2022.
//
//

import Foundation
import CoreData


extension Profile {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Profile> {
        return NSFetchRequest<Profile>(entityName: "Profile")
    }

    @NSManaged public var sex: String?

}

extension Profile : Identifiable {

}
