//
//  EKRecurrenceFrequency+RRule.swift
//
//
//  Created by Oleksandr Baralei on 6/23/24.
//

import EventKit

extension EKRecurrenceFrequency {

  public init?(rawValue: String) {
    switch rawValue {
    case "DAILY": self = .daily
    case "WEEKLY": self = .weekly
    case "MONTHLY": self = .monthly
    case "YEARLY": self = .yearly
    default: return nil
    }
  }

  var toString: String {
    switch self {
    case .daily: "DAILY"
    case .weekly: "WEEKLY"
    case .monthly: "MONTHLY"
    case .yearly: "YEARLY"
    @unknown default: ""
    }
  }
}
