//
//  People.swift
//  M4L6
//
//  Created by David May on 10/31/22.
//

import Foundation

class Person: Identifiable, Decodable {
    var ID: UUID?
    var name: String
    var address: String
    var company: String
    var yearsOfExperience: Int
}


