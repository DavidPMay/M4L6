//
//  PersonModel.swift
//  M4L6
//
//  Created by David May on 11/9/22.
//

import Foundation

class PersonModel: ObservableObject {
    
    @Published var showName = true
    @Published var showAddress = true
    @Published var showCompany = true
    @Published var showYears = true
    
     var people = [Person]()
    
    init() {
        
        // create an instance of DataService and get the data
    
        // by making the DataService method static we create a 'type' method and can write the code like this
        
        self.people = DataService.getLocalData()
      
    }
}
