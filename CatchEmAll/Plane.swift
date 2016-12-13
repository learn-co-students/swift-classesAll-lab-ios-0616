//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool { return self.speed > 0 && self.altitude > 0 }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff() {
        if !self.inFlight {
            self.speed = self.maxSpeed * 1/10
            self.altitude = self.maxAltitude * 1/10
        }
    }
    
    func land() {
        self.speed = 0
        self.altitude = 0
    }
    
    func climb() {
        if self.altitude < self.maxAltitude && self.inFlight {
            self.altitude += self.maxAltitude * 1/10
            self.decelerate()
        }
    }
    
    func dive() {
        if self.speed < self.maxSpeed && self.inFlight {
            self.altitude -= self.maxAltitude * 1/10
            self.accelerate()
        }
    }
    
    func bankRight() {
        if self.inFlight {
            self.speed -= self.speed * 1/10
            if self.heading == 360 {
                self.heading = 45
            } else {
                self.heading += 45
            }
        }
    }
    
    func bankLeft() {
        if self.inFlight {
            self.speed -= self.speed * 1/10
            if self.heading == 0 {
                self.heading = 315
            } else {
                self.heading -= 45
            }
        }
    }
}
