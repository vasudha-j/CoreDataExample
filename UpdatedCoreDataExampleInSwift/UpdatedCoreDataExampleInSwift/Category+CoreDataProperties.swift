//
//  Category+CoreDataProperties.swift
//  UpdatedCoreDataExampleInSwift
//
//  Created by Vasudha Jags on 9/15/17.
//  Copyright © 2017 Vasudha J. All rights reserved.
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category");
    }

    @NSManaged public var categoryName: String?
    @NSManaged public var titles: NSSet?

}

// MARK: Generated accessors for titles
extension Category {

    @objc(addTitlesObject:)
    @NSManaged public func addToTitles(_ value: Titles)

    @objc(removeTitlesObject:)
    @NSManaged public func removeFromTitles(_ value: Titles)

    @objc(addTitles:)
    @NSManaged public func addToTitles(_ values: NSSet)

    @objc(removeTitles:)
    @NSManaged public func removeFromTitles(_ values: NSSet)

}
