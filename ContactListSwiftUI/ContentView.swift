//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Игорь Богданов on 16.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    let personsList = PersonManager.shared.getPerson()
    
    var body: some View {
        TabView {
            NavigationView {
                ContactsListView(personsList: personsList)
            }
            .tabItem {
                Image(systemName: "person")
                Text("Contacts")
            }
            CathegorizedContactsListView(personsList: personsList)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Persons")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
