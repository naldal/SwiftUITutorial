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
    NavigationStack {
      List(scrums) { scrum in
        NavigationLink(destination: { DetailView(scrum: scrum) }, label: {
          CardView(scrum: scrum)
        })
        .listRowBackground(scrum.theme.mainColor)
        
      }
      .navigationTitle("Scrum Daily")
      .toolbar(content: {
        Button(action: {}, label: {
          Image(systemName: "plus")
        })
      })
    }
  }
}

struct SrcumView_Previews: PreviewProvider {
  static var previews: some View {
    ScrumView(scrums: DailyScrum.sampleData)
  }
}
