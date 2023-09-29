//
//  CardView.swift
//  Srcrumdinger
//
//  Created by 송하민 on 2023/08/15.
//

import SwiftUI

struct CardView: View {
  
  // MARK: - properties
  
  @Binding var scrum: DailyScrum
  
  // MARK: - body
  
  var body: some View {
    VStack(alignment: .leading) {
      Text("\(scrum.title)")
        .font(.headline)
      Spacer()
      HStack {
        Label("\(scrum.attendees.count)", systemImage: "person.3")
        Spacer()
        Label("\(scrum.lengthInMinutes)", systemImage: "clock")
          .labelStyle(.trailingIcon)
      }
      .font(.caption)
    }
    .padding()
    .foregroundColor(scrum.theme.accentColor)
  }
}

struct CardView_Previews: PreviewProvider {
  static var scrum = DailyScrum.sampleData[0]
  static var previews: some View {
    return CardView(scrum: .constant(scrum))
      .background(scrum.theme.mainColor)
      .previewLayout(.fixed(width: 400, height: 60))
  }
}
