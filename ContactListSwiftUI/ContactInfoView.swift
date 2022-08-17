//
//  ContactInfoView.swift
//  ContactListSwiftUI
//
//  Created by Игорь Богданов on 16.08.2022.
//

import SwiftUI

struct ContactInfoView: View {
   
    let selectedPerson: Person
    
    var body: some View {
        VStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text("Phone number: \(selectedPerson.phoneNumber)")
            Text("Email: \(selectedPerson.emailAdress)")
            Spacer()
        }
        .navigationBarTitle("\(selectedPerson.fullName)")
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(selectedPerson: PersonManager.shared.getPerson().randomElement()!)
    }
}
