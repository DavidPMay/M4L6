//
//  SettingsToggleView.swift
//  M4L6
//
//  Created by David May on 11/14/22.
//

import SwiftUI

struct SettingsToggleView: View {
    
    @EnvironmentObject var model: PersonModel
    @State var showName = true
    var body: some View {
        List(content: {
            Text("Settings").bold()
            
            VStack{
                
                Toggle ("Show name:", isOn: $model.showName)
                Toggle ("Show address:", isOn: $model.showAddress)
                Toggle ("Show company:", isOn: $model.showCompany)
                Toggle ("Show years:", isOn: $model.showYears)
                
            }
            .padding()
            
        })
        .padding(.vertical)
        
        
        
        
    }
}

struct SettingsToggleView_Previews: PreviewProvider {

   // @EnvironmentObject var model: PersonModel
    static var previews: some View {
        SettingsToggleView()
            .environmentObject(PersonModel())
    }
}
//The second tab has some toggles that let users change what information is displayed in the list
