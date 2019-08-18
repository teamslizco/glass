//
//  Restaurant.swift
//  glass
//
//  Created by Slizco on 8/18/19.
//  Copyright © 2019 Slizco. All rights reserved.
//

import Foundation

class Restaurant {
    var name: String
    var cuisine: String
    var grade: String
    var address: String
    var phoneNumber: String
    
    init?(name: String, cuisine: String, grade: String, address: String, phoneNumber: String) {
        guard !name.isEmpty else {
            return nil
        }
        self.name = name
        self.cuisine = cuisine
        self.grade = grade
        self.address = address
        self.phoneNumber = phoneNumber
    }

}
