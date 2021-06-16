//
//  Numbers.swift
//  ContactsListSwiftUI
//
//  Created by Артем Соколовский on 16.06.2021.
//

import SwiftUI

struct Numbers: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(header: Text("\(person.fullName)")) {
                        PhoneAndEmail(person: person)
                    }
                    .textCase(nil)
                }
            }
            .navigationBarTitle("Contacts List")
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(persons: Person.getContactList())
    }
}

