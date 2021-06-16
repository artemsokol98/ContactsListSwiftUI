//
//  ContentView.swift
//  ContactsListSwiftUI
//
//  Created by Артем Соколовский on 15.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    private var persons = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsList(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            Numbers(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
