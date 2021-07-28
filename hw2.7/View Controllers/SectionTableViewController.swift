//
//  SectionTableViewController.swift
//  hw2.7
//
//  Created by Maria Berger on 27.07.2021.
//

import UIKit

class SectionTableViewController: UITableViewController {

    private var personInfo = Person.getInfo()
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        personInfo.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cellInSection", for: indexPath)
        
        let person = personInfo[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.phoneNumber
        content.text = person.email
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return person.fullName
    }
}
