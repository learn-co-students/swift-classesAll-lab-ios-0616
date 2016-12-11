//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        if inFlight {
            super.decelerate()
            self.altitude = min(maxAltitude, self.altitude + self.maxAltitude * 0.2)
        }
    }
    
    override func dive() {
        if inFlight {
            super.accelerate()
            self.altitude = max(0.0, self.altitude - self.maxAltitude * 0.2)
        }
    }
    
    func afterburner() {
        if self.speed == self.maxSpeed {
            self.speed = self.maxSpeed * 2
        }
    }
}
