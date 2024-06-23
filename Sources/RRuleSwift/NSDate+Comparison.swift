//
//  NSDate+Comparison.swift
//  RRuleSwift
//
//  Created by Xin Hong on 16/3/28.
//  Copyright © 2016年 Teambition. All rights reserved.
//

import Foundation

internal extension Date {
    func isBefore(_ date: Date) -> Bool {
        compare(date) == .orderedAscending
    }

    func isSame(with date: Date) -> Bool {
        compare(date) == .orderedSame
    }

    func isAfter(_ date: Date) -> Bool {
        compare(date) == .orderedDescending
    }

    func isBeforeOrSame(with date: Date) -> Bool {
        isBefore(date) || isSame(with: date)
    }

    func isAfterOrSame(with date: Date) -> Bool {
        isAfter(date) || isSame(with: date)
    }
}
