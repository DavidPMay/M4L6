//
//  PersonModel.swift
//  M4L6
//
//  Created by David May on 11/9/22.
//

import Foundation

class PersonModel: ObservableObject {
    
   @Published var people = [Person]()
    
    init() {
        
        
        // create an instance of DataService and get the data
        
//        let service = DataService()
//
//        self.recipes = service.getLocalData()
        
        // could also write
   //     self.recipes = DataService().getLocalData()
        
        // by making the DataService method static we create a 'type' method and can write the code like this
        
        self.people = DataService.getLocalData()
        
        
        // Set the recipies property
        
        
        
    }
    
    
}
