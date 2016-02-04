//
//  TodoDo.swift
//  ToDo
//
//  Created by Ryan David on 2/3/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

protocol TodoDo: class
{
    typealias Object: Todo, NSCoding
    
    var items : [Object] { set get }
    func add(object: Object)
    func remove(object: Object)
    func removeAllObjects()
    func allObjects() -> [Object]
    
    
}

extension TodoDo
{
    func add(object: Object)
    {
        self.items.append(object)
    }
    func remove(object: Object)
    {
        self.items = self.items.filter({ (otherObject) -> Bool in
            return object.identifier != otherObject.identifier
        })
    }
    func removeAllObjects()
    {
        self.items.removeAll()
    }
    func allObjects() -> [Object]
    {
        return self.items
    }
}
