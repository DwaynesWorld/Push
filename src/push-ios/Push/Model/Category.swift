//
//  Category.swift
//  Push
//
//  Created by Kyle Thompson on 10/19/20.
//
//

import Foundation

enum Category: String, CaseIterable, Codable {
  case core
  case upperBody
  case lowerBody
  case endurance
  case strength
  case yoga
  case noEquipment
  case basicEquipment
  case fullEquipment

  var displayName: String {
    switch self {
    case .core: return "Core"
    case .upperBody: return "Upper Body"
    case .lowerBody: return "Lower Body"
    case .endurance: return "Endurance"
    case .strength: return "Strength"
    case .yoga: return "Yoga"
    case .noEquipment: return "No Equipment"
    case .basicEquipment: return "Basic Equipment"
    case .fullEquipment: return "Full Equipment"
    }
  }
}
