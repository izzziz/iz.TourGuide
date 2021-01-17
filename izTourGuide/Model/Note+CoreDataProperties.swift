//
//  Note+CoreDataProperties.swift
//  izTourGuide
//
//  Created by Izzat Jabali on 16/1/21.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var text: String?
    @NSManaged public var date: Date?

}

extension Note : Identifiable {

}
