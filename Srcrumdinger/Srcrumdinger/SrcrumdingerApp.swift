//
//  SrcrumdingerApp.swift
//  Srcrumdinger
//
//  Created by 송하민 on 2023/08/15.
//

import SwiftUI

@main
struct SrcrumdingerApp: App {
  
  @State private var scrums = DailyScrum.sampleData
  
  var body: some Scene {
    WindowGroup {
      ScrumView(scrums: .constant(scrums))
    }
  }
}
