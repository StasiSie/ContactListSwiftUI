//
//  CathegorizedContactsListView.swift
//  ContactListSwiftUI
//
//  Created by Игорь Богданов on 16.08.2022.
//

import SwiftUI

struct CathegorizedContactsListView: View {
    
    let personsList: [Person]
    
    var body: some View {
        List(personsList) { person in
            Section( person.fullName ) {
                VStack{
                    HStack{
                        Image(systemName: "phone")
                        Text(person.phoneNumber)
                    }
                    HStack{
                        Image(systemName: "mail")
                        Text(person.emailAdress)
                }
            }
        }
    }
}

struct CathegorizedContactsListView_Previews: PreviewProvider {
    static var previews: some View {
        CathegorizedContactsListView(personsList: PersonManager.shared.getPerson())
    }
  }
}
