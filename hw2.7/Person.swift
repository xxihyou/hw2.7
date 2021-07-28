//
//  Person.swift
//  hw2.7
//
//  Created by Maria Berger on 27.07.2021.
//

import Foundation


struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"

    }

}
extension Person {
    static func getInfo() -> [Person] {
        randomPeople
}
}
var randomPeople = [Person]()
var data: DataManager!

func getPerson() -> [Person] {
    for persona in 0...9 {
        let name = data.names.first!
        data.names.remove(at: persona)
        let surname = data.surnames.first!
        data.surnames.remove(at: persona)
        let phoneNumber = data.phoneNumbers.first!
        data.phoneNumbers.remove(at: persona)
        let email = data.emails.first!
        data.emails.remove(at: persona)
        
        let person = Person(name: name, surname: surname, email: phoneNumber, phoneNumber: email)
        
        randomPeople.append(person)
    }
    return randomPeople
}





