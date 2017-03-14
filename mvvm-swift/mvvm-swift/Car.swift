//
//  Car.swift
//  mvvm-swift
//
//  Created by 손은주 on 2017. 3. 14..
//  Copyright © 2017년 EJSohn. All rights reserved.
//

import Foundation

class Car {
    var model: String?
    var make: String?
    var horsepower: Int?
    var photoURL: String?
    
    init(model:String, make:String, horsepower:Int, photoURL:String) {
        self.model = model
        self.make = make
        self.horsepower = horsepower
        self.photoURL = photoURL
    }
}

class CarViewModel {
    private var car: Car?
    var modelText: String?
    var makeTest: String?
    var horsepowerText: String?
    var titleText: String?
    var photoURL: NSURL?
    
    init(car: Car){
        self.car = car
    }
}
