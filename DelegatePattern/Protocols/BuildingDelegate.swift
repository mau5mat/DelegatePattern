//
//  BuildingDelegate.swift
//  DelegatePattern
//
//  Created by Matt Roberts on 06/04/2018.
//  Copyright © 2018 Matt Roberts. All rights reserved.
//

import Foundation

protocol BuildingDelegate {
  func building(building: BuildingProtocol, finishedBuilding unit: Unit)
}
