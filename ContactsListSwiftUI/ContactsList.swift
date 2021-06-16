//
//  ContactsList.swift
//  ContactsListSwiftUI
//
//  Created by Артем Соколовский on 16.06.2021.
//

import SwiftUI

struct ContactsList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons, id: \.self) { name in
                Text("\(name.fullName)")
                NavigationLink("", destination: ContactDetails(person: name))
            }
            .navigationTitle("Contacts List")
        }
    }
}

struct ContactsList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsList(persons: Person.getContactList())
    }
}

