//
//  CommandCenter.swift
//  DelegatePattern
//
//  Created by Matt Roberts on 06/04/2018.
//  Copyright © 2018 Matt Roberts. All rights reserved.
//

import Foundation

class CommandCenter: BuildingProtocol {
  
  let delegate: BuildingDelegate
  
  // Default constructor for Swift
  init(delegate: BuildingDelegate) {
    self.delegate = delegate
  }
  
  func buildSCV() {
    let scv = Unit(name: "SCV", type: "Biological", hotkey: "s", ability: false, buildingDuration: 3)
    self.build(unit: scv)
  }
  
  // MARK: - BuildingProtocol
  func build(unit: Unit) {
    DispatchQueue.main.asyncAfter(deadline: .now() + unit.buildingDuration) {
      // Call back to delegate!
      self.delegate.building(building: self, finishedBuilding: unit)
    }
  }
}


