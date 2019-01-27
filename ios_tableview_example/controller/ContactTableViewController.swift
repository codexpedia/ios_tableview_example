//
//  ContactTableViewController.swift
//  ios_tableview_example
//
//  Created by codexpedia on 1/23/19.
//  Copyright © 2019 codexpedia. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    var contacts: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contacts = DataFactory.generatContacts()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #return the number of rows
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "tableCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ContactTableViewCell
            else {
            fatalError("The dequeued cell is not an instance of ContactTableViewCell.")
        }
        
        // Configure the cell
        let contact = contacts[indexPath.row]
        cell.portraitImageView.image = UIImage(named: "portrait_placeholder")
        cell.nameLabel.text = contact.name
        cell.titleLabel.text = contact.title
        return cell
    }

}
