//
//  Titles+CoreDataProperties.swift
//  UpdatedCoreDataExampleInSwift
//
//  Created by Vasudha Jags on 9/15/17.
//  Copyright © 2017 Vasudha J. All rights reserved.
//

import Foundation
import CoreData


extension Titles {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Titles> {
        return NSFetchRequest<Titles>(entityName: "Titles");
    }

    @NSManaged public var title: String?
    @NSManaged public var descriptionOfTitle: String?
    @NSManaged public var categories: Category?

}
