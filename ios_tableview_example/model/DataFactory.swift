//
//  Contacts.swift
//  ios_tableview_example
//
//  Created by codexpedia on 1/23/19.
//  Copyright © 2019 codexpedia. All rights reserved.
//

import Foundation

class DataFactory {
    
    static func generatContacts() -> [Contact] {
        var contacts: [Contact] = []
        
        for index in 0...30 {
            contacts.append(Contact(name: "name\(index)", title: "title \(index)"))
        }
        
        return contacts
    }
}
