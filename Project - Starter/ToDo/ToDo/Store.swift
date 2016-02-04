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
    private init()
    {
        
    }
    
    typealias Object = ToDoItem
    var list = [ToDoItem]()
    
}