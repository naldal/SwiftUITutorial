//
//  ThemePicker.swift
//  Srcrumdinger
//
//  Created by 송하민 on 9/28/23.
//

import SwiftUI

struct ThemePicker: View {
  
  @Binding var selection: Theme
  
  var body: some View {
    Picker("Theme", selection: $selection) {
      ForEach(Theme.allCases) { theme in
        ThemeView(theme: theme)
          .tag(theme)
      }
    }
    .pickerStyle(.navigationLink)
  }
}

#Preview {
  ThemePicker(selection: .constant(.orange))
}
