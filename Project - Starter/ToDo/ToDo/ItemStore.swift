//
//  ItemStore.swift
//  ToDo
//
//  Created by Lauren Spatz on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class ItemStore: ItemDo
{
    typealias Item = ToDoItem
    
    var checkList = [Item]()
    
    static let shared = ItemStore()
    
    private init () {}
}