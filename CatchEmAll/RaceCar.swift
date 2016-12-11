//
//  RaceCar.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    
    var driver: String
    var sponsors: [String]
    
    init(name: String, weight:Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        self.speed = min(self.maxSpeed, self.speed + self.maxSpeed * 0.2)
    }
    
    override func decelerate() {
        self.speed = max(0.0, self.speed - self.maxSpeed * 0.2)
    }
    
    func driftRight() {
        if self.speed > 0.0 {
            self.speed = self.speed * 0.75
            self.heading = self.heading + 90.0
            if self.heading > 360 {
                self.heading -= 360
            }
        }
    }
    
    func driftLeft() {
        if self.speed > 0.0 {
            self.speed = self.speed * 0.75
            self.heading = (self.heading - 90.0)
            if self.heading < 0 {
                self.heading += 360
            }
        }
    }
}
