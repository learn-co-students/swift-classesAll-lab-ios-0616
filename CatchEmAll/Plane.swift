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
    var altitude: Double
    var inFlight: Bool {
        if self.altitude == 0.0 || self.speed == 0.0 {
            return false
        } else {
            return true
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        self.altitude = 0.0
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if !inFlight {
            self.speed = self.maxSpeed * 0.1
            self.altitude = self.maxAltitude * 0.1
        }
    }
    
    func land() {
        self.speed = 0.0
        self.altitude = 0.0
    }
    
    func climb() {
        if inFlight {
            super.decelerate()
            self.altitude = min(maxAltitude, self.altitude + self.maxAltitude * 0.1)
        }
    }
    
    func dive() {
        if inFlight {
            super.accelerate()
            self.altitude = max(0.0, self.altitude - self.maxAltitude * 0.1)
        }
    }
    
    func bankRight() {
        if inFlight {
            self.speed = self.speed * 0.9
            self.heading = self.heading + 45.0
            if self.heading > 360 {
                self.heading -= 360
            }
        }
    }
    
    func bankLeft() {
        if inFlight {
            self.speed = self.speed * 0.9
            self.heading = (self.heading - 45.0)
            if self.heading < 0 {
                self.heading += 360
            }
        }
    }
    
}
