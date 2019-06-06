//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var running = false
    var authorName = ""
    var data = AviatrixData()
    var currentLocation = "St. Louis"
    var distanceTraveled = 0
    var fuelLevel = 5000.0
    let maxFuel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0
    
    init(author : String) {
        authorName = author
    }
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double {
        let toReturn = maxFuel - fuelLevel
        fuelLevel = maxFuel
        return toReturn
    }
    
    func flyTo(destination : String) {
        distanceTraveled += distanceTo(target : destination)
        fuelLevel -= milesPerGallon * Double(distanceTo(target : destination))
        currentLocation = destination
    }
    
    func distanceTo(target : String) -> Int {
        return data.knownDistances[currentLocation]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
