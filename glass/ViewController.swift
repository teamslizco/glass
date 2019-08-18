//
//  ViewController.swift
//  glass
//
//  Created by Slizco on 8/18/19.
//  Copyright © 2019 Slizco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var cuisine: UILabel!
    @IBOutlet weak var grade: UILabel!
    @IBOutlet weak var distance: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var gradeImageView: UIImageView!
    
    var restaurant: Restaurant?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        restaurant = Restaurant(name: "Coco's Cafe", cuisine: "American", grade: "A", address: "123 W 45th St", phoneNumber: "(867) 530-9867")
        
        guard let res = restaurant else {
            setDefaults()
            return
        }
        name.text = res.name
        cuisine.text = res.cuisine
        grade.text = res.grade
        distance.text = "0.0 mi"
        address.text = res.address
        phoneNumber.text = res.phoneNumber
        gradeImageView.image = getGradeImage(grade: res.grade)
    }
    
    // Private Methods
    private func getGradeImage(grade: String) -> UIImage{
        let bundle = Bundle(for: type(of: self))
        let imageFromFile = UIImage(named: "\(grade)_grade", in: bundle, compatibleWith: self.traitCollection)
        guard let image = imageFromFile else {
            return UIImage()
        }
        return image
    }
    
    private func setDefaults() {
        name.text = "No content to display"
        cuisine.text = ""
        grade.text = ""
        distance.text = ""
        address.text = ""
        phoneNumber.text = ""
        gradeImageView.image = UIImage()
    }
}

