//
//  TrailingIconLabelStyle.swift
//  Srcrumdinger
//
//  Created by 송하민 on 2023/08/15.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
  func makeBody(configuration: Configuration) -> some View {
    HStack {
      configuration.title
      configuration.icon
    }
  }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
  static var trailingIcon: Self {
    Self()
  }
}
