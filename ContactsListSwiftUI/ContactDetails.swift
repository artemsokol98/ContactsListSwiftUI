//
//  ContactDetails.swift
//  ContactsListSwiftUI
//
//  Created by Артем Соколовский on 16.06.2021.
//

import SwiftUI

struct ContactDetails: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 200, height: 200, alignment:  .center)
                Spacer()
            }
            PhoneAndEmail(person: person)
        }
        .navigationBarTitle(person.fullName)
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(person: Person.getContactList()[1])
    }
}

