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
    let descript: String?
    var quantity: Int?
    let itemDate: String?
    let id: String?
    
    init(listItem: String, descript: String, quantity: Int? = 0, itemDate: String? = nil, id: String? = NSUUID().UUIDString)
    {
        self.listItem = listItem
        self.descript = descript
        self.quantity = quantity
        self.itemDate = itemDate
        self.id = id
    }
    convenience required init?(coder aDecoder: NSCoder)
    {
        guard let listItem = aDecoder.decodeObjectForKey("listItem") as? String else { fatalError("List item is not a string?")}
        guard let descript = aDecoder.decodeObjectForKey("descript") as? String else { fatalError("descript is not a string")}
        guard let quantity = aDecoder.decodeObjectForKey("quantity") as? Int else { fatalError("404") }
//        guard let itemDate = aDecoder.decodeObjectForKey("itemDate") as? String else { fatalError("404") }
        guard let id = aDecoder.decodeObjectForKey("id") as? String else { fatalError("id is not a string") }
        
        self.init(listItem: listItem, descript: descript, quantity: quantity, id: id)
    }
    
    func encodeWithCoder(aCoder: NSCoder)
    {
        aCoder.encodeObject(self.listItem, forKey: "listItem")
        aCoder.encodeObject(self.descript, forKey: "descript")
        aCoder.encodeObject(self.quantity, forKey: "quantity")
//        aCoder.encodeObject(self.itemDate, forKey: "date")
        aCoder.encodeObject(self.id, forKey: "id")
        
    }
    
}


