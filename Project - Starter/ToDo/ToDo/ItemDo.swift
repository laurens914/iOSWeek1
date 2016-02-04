//
//  ItemDo.swift
//  ToDo
//
//  Created by Lauren Spatz on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation


protocol ItemDo: class
{
    typealias Object: ToDoItem, NSCoding
    
    var list : [Object] { get set }
    
    func addItem(object: Object)
    func clearItem(object: Object)
    func clearList()
    func count() -> Int
    func removeObjectAtIndexPath(index: Int)
    func objectAtIndex(index: Int) -> Object?
    func viewList() -> [Object]
    func save()
    
}

extension ItemDo
{
    func addItem(object: Object)
    {
        self.list.append(object)
        self.save()
        print("object added")
        print("object now has \(self.list.count) items")
    }
    
    func clearItem(object: Object)
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
    
    func objectAtIndex(index: Int) -> Object?
    {
        return self.list[index]
    }
    
    func viewList() -> [Object]
    {
        return self.list
    }
    
    func save()
    {
        NSKeyedArchiver.archiveRootObject(self.list, toFile: String.archivePath())
    }
}