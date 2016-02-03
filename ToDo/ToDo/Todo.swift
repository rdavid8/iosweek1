//
//  Todo.swift
//  ToDo
//
//  Created by Ryan David on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Todo: NSObject, NSCoding
{
    let listItem: String
    let descript: String
    var quantity: Int
    var date: Int
    let identifier: String?
    
    init(listItem: String, descript: String, quantity: Int, date: Int, identifier: String?)
    {
        self.listItem = listItem
        self.descript = descript
        self.quantity = quantity
        self.date = date
        self.identifier = identifier
    }
    convenience required init?(coder aDecoder: NSCoder)
    {
        guard let listItem = aDecoder.decodeObjectForKey("listItem") as? String else { fatalError("List item is not a string?")}
        guard let descript = aDecoder.decodeObjectForKey("descript") as? String else { fatalError("descript is not a string")}
        guard let quantity = aDecoder.decodeObjectForKey("quantity") as? Int else { fatalError("404") }
        guard let date = aDecoder.decodeObjectForKey("date") as? Int else { fatalError("404") }
        guard let identifier = aDecoder.decodeObjectForKey("identifier") as? String else { fatalError("identifier is not a string") }
        
        self.init(listItem: listItem, descript: descript, quantity: quantity, date: date, identifier: identifier)
    }
    
    func encodeWithCoder(aCoder: NSCoder)
    {
        aCoder.encodeObject(self.listItem, forKey: "listItem")
        aCoder.encodeObject(self.descript, forKey: "descript")
        aCoder.encodeObject(self.quantity, forKey: "quantity")
        aCoder.encodeObject(self.date, forKey: "date")
        aCoder.encodeObject(self.identifier, forKey: "identifier")
        
    }
    
}

