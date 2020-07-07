 //
//  ToDoItem.swift
//  ToDo
//
//  Created by Abdalrahman Aboujeeb on 07/07/2020.
//  Copyright © 2020 Abdalrahman Aboujeeb. All rights reserved.
//

import Foundation
import CoreData
 
 public class ToDoItem: NSManagedObject, Identifiable {
    @NSManaged public var createdAt: Date?
    @NSManaged public var title: String?
 }

 extension ToDoItem {
    static func getAllToDoItems() -> NSFetchRequest<ToDoItem> {
        let request: NSFetchRequest<ToDoItem> = ToDoItem.fetchRequest() as! NSFetchRequest<ToDoItem>
        
        let sortDescriptor = NSSortDescriptor(key: "createdAt", ascending: false)
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
 }
