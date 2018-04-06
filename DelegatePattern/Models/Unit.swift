//
//  Unit.swift
//  DelegatePattern
//
//  Created by Matt Roberts on 06/04/2018.
//  Copyright © 2018 Matt Roberts. All rights reserved.
//

import Foundation

struct Unit {
  
  let name: String
  let type: String
  let hotkey: Character
  let ability: Bool
  let buildingDuration: Double
  
  init(name: String, type: String, hotkey: Character, ability: Bool, buildingDuration: Double) {
    self.name = name
    self.type = type
    self.hotkey = hotkey
    self.ability = ability
    self.buildingDuration = buildingDuration
  }
}
