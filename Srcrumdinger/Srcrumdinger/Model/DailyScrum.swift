//
//  DailyScrum.swift
//  Srcrumdinger
//
//  Created by 송하민 on 2023/08/15.
//

import SwiftUI

struct DailyScrum: Identifiable {
  internal init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
    self.id = id
    self.title = title
    self.attendees = attendees.map { Attendee(name: $0) }
    self.lengthInMinutes = lengthInMinutes
    self.theme = theme
  }
  
  var id: UUID
  var title: String
  var attendees: [Attendee]
  var lengthInMinutes: Int
  var theme: Theme
  
}

extension DailyScrum {
  struct Attendee: Identifiable {
    let id: UUID
    let name: String
    
    init(id: UUID = UUID(), name: String) {
      self.id = id
      self.name = name
    }
  }
}

extension DailyScrum {
  static let sampleData: [DailyScrum] = [
    DailyScrum(title: "Design",
               attendees: ["Cathy", "Daisy", "Simon", "Jonathan"],
               lengthInMinutes: 10,
               theme: .yellow),
    DailyScrum(title: "App Dev",
               attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"],
               lengthInMinutes: 5,
               theme: .orange),
    DailyScrum(title: "Web Dev",
               attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
               lengthInMinutes: 5,
               theme: .indigo)
  ]
}

