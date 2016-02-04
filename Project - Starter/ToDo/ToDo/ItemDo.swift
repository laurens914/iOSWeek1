//
//  ItemDo.swift
//  ToDo
//
//  Created by Lauren Spatz on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation


protocol ItemDo
{
    
    func addItem(object: ToDoItem)
    func clearItem(object: ToDoItem)
    func clearList()
    func count() -> Int
    func removeObjectAtIndexPath(index: Int)
    func objectAtIndex(index: Int) -> ToDoItem?
    func viewList() -> [ToDoItem]
    func save()
    
}