//
//  Theme.swift
//  Srcrumdinger
//
//  Created by 송하민 on 2023/08/15.
//

import SwiftUI

enum Theme: String {
  case indigo
  case orange
  case purple
  case teal
  case yellow
  
  var accentColor: Color {
    switch self {
      case .orange, .teal, .yellow: return .black
      case .indigo, .purple: return .white
    }
  }
  
  var mainColor: Color {
    switch self {
      case .indigo:
        return Color.indigo
      case .orange:
        return Color.orange
      case .purple:
        return Color.purple
      case .teal:
        return Color.teal
      case .yellow:
        return Color.yellow
    }
  }
}
