//
//  ScrumsView.swift
//  Srcrumdinger
//
//  Created by 송하민 on 2023/08/26.
//

import SwiftUI

struct ScrumView: View {
  
  let scrums: [DailyScrum]
  
  var body: some View {
    List(scrums) { scrum in
      CardView(scrum: scrum)
        .listRowBackground(scrum.theme.mainColor)
    }
  }
}

struct SrcumView_Previews: PreviewProvider {
  static var previews: some View {
    ScrumView(scrums: DailyScrum.sampleData)
  }
}
