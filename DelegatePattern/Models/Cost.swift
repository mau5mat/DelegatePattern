//
//  Cost.swift
//  DelegatePattern
//
//  Created by Matt Roberts on 06/04/2018.
//  Copyright © 2018 Matt Roberts. All rights reserved.
//

import Foundation

struct Cost {
  
  let minerals: Int
  let gas: Int
  let supply: Int
  
  init(minerals: Int, gas: Int, supply: Int) {
    self.minerals = minerals
    self.gas = gas
    self.supply = supply
  }
  
}
