//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0
    var heading: Double = 0
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        self.speed = self.maxSpeed
    }
    
    func halt() {
        self.speed = 0
    }
    
    func accelerate() {
        if self.speed < self.maxSpeed {
            self.speed += self.maxSpeed * 1/10
        }
    }
    
    func decelerate() {
        if self.speed > 0 {
            self.speed -= self.maxSpeed * 1/10
        }
    }
    
    func turnRight() {
        if self.speed > 0 {
            self.speed /= 2
            if self.heading == 360 {
                self.heading = 90
            } else {
                self.heading += 90
            }
        }
    }
    
    func turnLeft() {
        if self.speed > 0 {
            self.speed /= 2
            if self.heading == 0 {
                self.heading = 270
            } else {
                self.heading -= 90
            }
        }
    }
}

enum Transmission {
    case Automatic
    case Manual
}
