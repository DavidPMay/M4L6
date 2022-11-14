//
//  DataService.swift
//  M4L6
//
//  Created by David May on 11/3/22.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Person] {
        
        // Parse local json file
        
        // Get a url path to the json file
        
        let pathString = Bundle.main.path(forResource: "People", ofType: "json")
        
        //check if pathName is not nil otherwise
        
        guard pathString != nil else {
            
            return [Person]()
        }
        
        
        // Create a URL object
        
        //let url = URL(fileURLWithPath: pathString!)
        let url = URL(filePath: pathString!)
        
        do {
            // Create a Data object
            
            let data = try Data(contentsOf: url)
            
            // Decode the object with a JSON decoder
            let decoder = JSONDecoder()
            
            
            do {
                
                let personData = try decoder.decode([Person].self, from: data)
                
                // Add the Unique IDs
                for p in personData {
                    p.ID = UUID()
                    
                    
                    // Add unique ID to ingredients
                    // for i in r.ingredients {
                    //    i.id = UUID()
                    // }
                }
                
                // Return the people
                return personData
                
            }
            catch {
                
                // Error with parsing json
                print("Error1")
                print(error)
                
            }
            
            
            
            
        }
        catch {
            
            // Error with getting data
            print("ERROR2")
            print(error)
            
        }
        
        return [Person]()
    }
}
