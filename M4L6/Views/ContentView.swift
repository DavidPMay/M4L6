//
//  ListOfPeopleView.swift
//  M4L6
//
//  Created by David May on 10/26/22.
//

import SwiftUI

struct ListOfPeopleView: View {
    
    @EnvironmentObject var model: PersonModel
   
    
    var body: some View {
        VStack (alignment: .leading){
            Text("People")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .bold()
                .padding(.bottom, 17.0)
                
            
            ForEach(model.people) {p in
                
                if model.showName {
                    Text("Name: \(p.name)")
                }
                
                if model.showAddress {
                    Text("Address: \(p.address)")
                }
                if model.showCompany {
                    Text("Company: \(p.company)")
                }
                if model.showYears {
                    Text("Years Experience: \(p.yearsOfExperience)")
                }
                   
               Text(" ")
                    .padding(.bottom)
                    
                    
                
            }
            
        }
        
    }
}
        

    



struct ListOfPeopleView_Previews: PreviewProvider {
    static var previews: some View {
        ListOfPeopleView()
            .environmentObject(PersonModel())
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

