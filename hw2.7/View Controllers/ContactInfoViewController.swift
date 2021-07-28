//
//  ContactInfoViewController.swift
//  hw2.7
//
//  Created by Maria Berger on 27.07.2021.
//

import UIKit

class ContactInfoViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = "Phone Number:  \(person.phoneNumber)"
        emailLabel.text = "E-mail: \(person.email)"
        
        navigationItem.title = person.fullName
    }
    


}
