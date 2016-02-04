//
//  Store.swift
//  ToDo
//
//  Created by Lauren Spatz on 2/4/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Store: ItemDo
{
    
    static let shared = Store()
    private init() {}
    
    var list = [ToDoItem]()
    
    func addItem(object: ToDoItem)
    {
        self.list.append(object)
        self.save()
        print("object added")
        print("object now has \(self.list.count) items")
    }
    
    func clearItem(object: ToDoItem)
    {
        self.list = self.list.filter({ (savedObject) -> Bool in
            return object.identifier! != savedObject.identifier!
        })
    }
    
    func removeObjectAtIndexPath(index: Int)
    {
        self.list.removeAtIndex(index)
    }
    
    func count() -> Int
    {
        return self.list.count
    }
    
    func clearList()
    {
        self.list.removeAll()
    }
    
    func objectAtIndex(index: Int) -> ToDoItem?
    {
        return self.list[index]
    }
    
    func viewList() -> [ToDoItem]
    {
        return self.list
    }
    
    func save()
    {
        NSKeyedArchiver.archiveRootObject(self.list, toFile: String.archivePath())
    }
}