//
//  ViewController.swift
//  DelegatePattern
//
//  Created by Matt Roberts on 06/04/2018.
//  Copyright © 2018 Matt Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BuildingDelegate {

  @IBOutlet weak var buildButton: UIButton!
  
  var commandCenter: CommandCenter?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.commandCenter = CommandCenter(delegate: self)
  }

  @IBAction func build() {
    self.commandCenter?.buildSCV()
  }
  
  // MARK: - BuildingDelegate
  func building(building: BuildingProtocol, finishedBuilding unit: Unit) {
    print("Building that performed build: \(building)")
    print("Unit ready: \(unit.name). Took \(unit.buildingDuration) seconds.")
  }
}

