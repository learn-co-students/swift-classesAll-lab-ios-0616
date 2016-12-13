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
        if self.altitude < self.maxAltitude && self.inFlight {
            self.altitude += self.maxAltitude * 1/5
            self.decelerate()
        }
    }
    
    override func dive() {
        if self.inFlight {
            self.altitude -= self.maxAltitude * 1/5
            self.accelerate()
        }
    }
    
    func afterburner() {
        if self.speed == self.maxSpeed {
            self.speed *= 2
        }
    }
}
