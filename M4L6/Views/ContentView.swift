//
//  ContentView.swift
//  M4L6
//
//  Created by David May on 10/26/22.
//

import SwiftUI

struct ContentView: View {
    
    var model = PersonModel()
    //@State var tabIndex = 2
    
    var body: some View {
        VStack (alignment: .leading){
            
            ForEach(model.people) {p in
                
                Text("Name: \(p.name)")
                Text("Address: \(p.address)")
                Text("Company: \(p.company)")
                Text("Years Experience: \(p.yearsOfExperience)")
                    .padding(.bottom)
                    
                
            }
            
        }
        
    }
}
        
//        TabView (selection: $tabIndex)
//
//            ForEach(model.people) { person in
//
//
//                VStack {
//                    Text(person.Name)
//
//                }
//
//
//            }
//
//            Text("People")
//                .tabItem {
//                    VStack {
//                        Image(systemName: "person.3.fill")
//                            .foregroundColor(.blue)
//                        Text("People")
//                    }
//                }
//                .tag(1)
//            VStack {
//                Text("This is tab 2")
//                Text("This is some more text!")
//            }
//            .tabItem {
//                VStack {
//                    Image(systemName: "star")
//                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                    Text("TAB #2")
//                }
//
//            }
//            .tag(2)
//        }
//    }
    
    
    
    
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
//    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//Challenge
//
//Build an app that displays information about people working at different companies. The main view has two tabs:
//
//The first tab shows a list of all the people, including their name, address, company and number of years of experience
//
//The second tab has some toggles that let users change what information is displayed in the list
//
//To do this, build a view model that holds a list of people and the current user’s preferences. Access the model in the views by using the EnvironmentObject modifier.

