//
//  ThemeView.swift
//  Srcrumdinger
//
//  Created by 송하민 on 9/28/23.
//

import SwiftUI

struct ThemeView: View {
  
  let theme: Theme
  
  var body: some View {
    Text(theme.name)
      .padding(4)
      .frame(maxWidth: .infinity)
      .background(theme.mainColor)
      .foregroundStyle(theme.accentColor)
      .clipShape(RoundedRectangle(cornerRadius: 4.0))
  }
}

#Preview {
  ThemeView(theme: .bubblegum)
}
