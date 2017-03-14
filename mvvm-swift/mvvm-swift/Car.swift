//
//  Car.swift
//  mvvm-swift
//
//  Created by 손은주 on 2017. 3. 14..
//  Copyright © 2017년 EJSohn. All rights reserved.
//

import Foundation

class Car {
    var model: String
    var make: String
    var kilowatts: Int
    var photoURL: String
    
    init(model:String, make:String, kilowatts:Int, photoURL:String) {
        self.model = model
        self.make = make
        self.kilowatts = kilowatts
        self.photoURL = photoURL
    }
}

class CarViewModel {
    private var car: Car
    static let horsepowerPerKilowatt = 1.34102209
    var modelText: String {
        return car.model
    }
    
    var makeTest: String {
        return car.make
    }
    
    var horsepowerText: String {
        let horsepower = Int(round(Double(car.kilowatts)*CarViewModel.horsepowerPerKilowatt))
        return "\(horsepower) HP"
    }
    
    var titleText: String {
        return "\(car.make) \(car.model)"
    }
    var photoURL: NSURL? {
        return NSURL(string: car.photoURL)
    }
    
    init(car: Car){
        self.car = car
    }
}
