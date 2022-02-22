//
//  Entity+CoreDataProperties.swift
//  Superhero
//
//  Created by Max Podvirnyi on 22.02.2022.
//
//

import Foundation
import CoreData


extension Entity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
        return NSFetchRequest<Entity>(entityName: "Entity")
    }

    @NSManaged public var sex: String?

}

extension Entity : Identifiable {

}
