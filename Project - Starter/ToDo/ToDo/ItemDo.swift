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
    
    var checkList : [Object] { set get }
    
    func addItem(object: Object)
    func clearItem(object: Object)
    func clearList()
    func viewList() -> [Object]
    
}

extension ItemDo
{
    func addItem(object: Object)
    {
        self.checkList.append(object)
        print("object added")
        print("object now has \(self.checkList.count) items")
    }
    func clearItem(object: Object)
    {
        self.checkList = self.checkList.filter({ (otherObject) -> Bool in
            return object.identifier != otherObject.identifier
        })
    }
    func clearList()
    {
        self.checkList.removeAll()
    }
    func viewList() -> [Object]
    {
     return self.checkList
    }
    
}