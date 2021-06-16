//
//  PhoneAndEmail.swift
//  ContactsListSwiftUI
//
//  Created by Артем Соколовский on 16.06.2021.
//

import SwiftUI

struct PhoneAndEmail: View {
    
    let person: Person
    
    var body: some View {
        HStack {
            Image(systemName: "phone")
                .foregroundColor(.blue)
            Text("\(person.phone)")
        }
        HStack {
            Image(systemName: "tray")
                .foregroundColor(.blue)
            Text("\(person.email)")
        }
    }
}

struct PhoneAndEmail_Previews: PreviewProvider {
    static var previews: some View {
        PhoneAndEmail(person: Person.getContactList()[1])
    }
}
