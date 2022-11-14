//
//  SwitcherTabView.swift
//  M4L6
//
//  Created by David May on 11/14/22.
//

import SwiftUI

struct SwitcherTabView: View {
    
    @State var tabIndex = 2
    
    var body: some View {
        
        TabView (selection: $tabIndex) {
            
                ContentView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.3.fill")
                            .foregroundColor(.blue)
                        Text("People")
                    }
                }
                .tag(1)
            VStack {
                Text("Toggles")
            }
            
            .tabItem {
                VStack {
                    Image(systemName: "gearshape.2")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("Settings")
                }
                
            }
            .tag(2)
        }
    }
}

struct SwitcherTabView_Previews: PreviewProvider {
    static var previews: some View {
        SwitcherTabView()
    }
}
