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
    
    var items: [Object] { set get }
    
    func add(object: Object)
    func removeObject(object: Object)
    func removeAllObjects()
    func removeObjectAtIndexPath(indexPath: NSIndexPath)
    func objectAtIndex(Index: Int) -> Object?
    func count() -> Int
    func allObjects() -> [Object]
    func save()
    
}

extension TodoDo
{
    func add(object: Object)
    {
        self.items.append(object)
        self.save()
    }
    func removeObject(object: Object)
    {
        self.items = self.items.filter({ (otherObject) -> Bool in
            return object.id != otherObject.id
            
        })
        self.save()
    }
    func removeObjectAtIndexPath(indexPath: NSIndexPath)
    {
        self.items.removeAtIndex(indexPath.row)
    }
    
    func objectAtIndex(index: Int) -> Object?
    {
        return self.items[index]
    }
    func removeAllObjects()
    {
        self.items.removeAll()
        
    }
    func count() -> Int
    {
        return self.items.count
    }
    func allObjects() -> [Object]
    {
        return self.items
    }
    func save()
    {
        NSKeyedArchiver.archiveRootObject(self.items, toFile: String.archivePath())
    }
}
