//
//  Time+CoreDataProperties.swift
//  Range
//
//  Created by Himanshu Jha on 02/05/20.
//  Copyright © 2020 Himanshu Jha. All rights reserved.
//
//

import Foundation
import CoreData


extension Time {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Time> {
        return NSFetchRequest<Time>(entityName: "Time")
    }

    @NSManaged public var time: Double
    @NSManaged public var rate: Int16
    @NSManaged public var sno: Int16

}
