//
//  Models.swift
//  ContactsList
//
//  Created by Игорь Богданов on 26.04.2022.
//

import Foundation

class PersonManager {
    static let shared = PersonManager()
    
    private init(){}
    
    func getPerson() -> [Person] {
        var persons: [Person] = []
        let data = DataManager.shared
        let name = data.names
        let surname = data.surnames
        let emails = data.emailAdresses
        let phones = data.phoneNumbers
        
        let iterations = min(name.count, surname.count, emails.count, phones.count)
        
        for iteration in 0..<iterations {
           let person = Person.init(
                name: name[iteration],
                surname: surname[iteration],
                phoneNumber: phones[iteration],
                emailAdress: emails[iteration])
            persons.append(person)
        }
        return persons
    }
}

struct Person: Identifiable {
    let name: String
    let surname: String
    let phoneNumber: String
    let emailAdress: String
    let id = UUID()
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

