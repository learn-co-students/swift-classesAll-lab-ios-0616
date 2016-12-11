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
    var speed: Double
    var heading: Double
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.heading = 0.0
        self.speed = 0.0
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        self.speed = self.maxSpeed
    }
    
    func halt() {
        self.speed = 0.0
    }
    
    func accelerate() {
        let acceleratedSpeed = self.speed + self.maxSpeed * 0.1
        self.speed = min(acceleratedSpeed, self.maxSpeed)
//        if acceleratedSpeed < self.maxSpeed {
//            self.speed = acceleratedSpeed
//        } else {
//            self.speed = self.maxSpeed
//        }
    }
    
    func decelerate() {
        let deceleratedSpeed = self.speed - self.maxSpeed * 0.1
        self.speed = max(deceleratedSpeed, 0.0)
    }
    
    func turnRight() {
        
    }
}
