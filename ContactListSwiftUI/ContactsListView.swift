//
//  ContactsListView.swift
//  ContactListSwiftUI
//
//  Created by Игорь Богданов on 16.08.2022.
//

import SwiftUI

struct ContactsListView: View {
    
    let personsList: [Person]
    var body: some View {
        List (personsList) { person in
            NavigationLink(person.fullName) {
                ContactInfoView(selectedPerson: person)
            }
        }
        .navigationTitle("Contacts List")
    }
}

struct ContactsListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListView(personsList: PersonManager.shared.getPerson())
    }
}
