//
//  ToDo.swift
//  ToDo
//
//  Created by Lauren Spatz on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class ToDoItem: NSObject, NSCoding
{
    let name: String
    let date: String
    var moreInfo: String?
    
    let identifier: String?
    
    init(name: String, date: String, moreInfo: String? = nil, identifier: String? = NSUUID().UUIDString)
    {
      self.name = name
      self.date = date
      self.moreInfo = moreInfo
      self.identifier = identifier
    }
    convenience required init (coder aDecoder: NSCoder)
    {
        guard let name = aDecoder.decodeObjectForKey("name") as? String else { fatalError() }
        guard let date = aDecoder.decodeObjectForKey("date") as? String else { fatalError() }
        guard let moreInfo = aDecoder.decodeObjectForKey("moreInfo") as? String else { fatalError() }
        guard let identifier = aDecoder.decodeObjectForKey("identifier") as? String else { fatalError() }
        self.init(name: name, date: date, moreInfo: moreInfo, identifier: identifier)
        
    }
    func encodeWithCoder(aCoder: NSCoder)
    {
        aCoder.encodeObject(self.name, forKey: "name")
        aCoder.encodeObject(self.date, forKey: "date")
        aCoder.encodeObject(self.moreInfo, forKey: "moreInfo")
        aCoder.encodeObject(self.identifier, forKey: "identifier")
        
    }
}
