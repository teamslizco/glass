//
//  Grade.swift
//  glass
//
//  Created by Cox, Elizabeth on 8/18/19.
//  Copyright © 2019 Slizco. All rights reserved.
//

import Foundation
import UIKit

class Grade {
    var name: String
    var image: UIImage
    
    init?(name: String) {
        guard !name.isEmpty else {
            return nil
        }
        // Load image from file
        let bundle = Bundle(for: type(of: self))
        let image = UIImage(named: name, in: bundle)
        
        self.name = name
        self.image = image
    }
}
