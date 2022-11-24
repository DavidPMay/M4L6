//
//  SettingsToggleView.swift
//  M4L6
//
//  Created by David May on 11/14/22.
//

import SwiftUI

struct SettingsToggleView: View {
    
    @EnvironmentObject var model: PersonModel
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //Toggle ("Show name:", isOn: $model.name)
        
        
    }
}

struct SettingsToggleView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsToggleView()
    }
}
