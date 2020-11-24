//
//  ColorAttributeTransformer.swift
//  BowTies
//
//  Created by Kenneth Jones on 11/24/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import UIKit

class ColorAttributeTransformer: NSSecureUnarchiveFromDataTransformer {
  override static var allowedTopLevelClasses: [AnyClass] {
    [UIColor.self]
  }
  
  static func register() {
    let className = String(describing: ColorAttributeTransformer.self)
    let name = NSValueTransformerName(className)
    
    let transformer = ColorAttributeTransformer()
    ValueTransformer.setValueTransformer(transformer, forName: name)
  }
}
