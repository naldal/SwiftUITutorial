//
//  DetailView.swift
//  Srcrumdinger
//
//  Created by 송하민 on 2023/09/27.
//

import SwiftUI

struct DetailView: View {

  @State private var isPresentingEditView = false
  
  let scrum: DailyScrum
  
  var body: some View {
    List {
      Section(content: {
        NavigationLink(destination: { MeetingView() }) {
          Label("Start Meeting", systemImage: "timer")
            .font(.headline)
            .foregroundColor(Color.accentColor)
        }
        HStack {
          Label("Length", systemImage: "clock")
          Spacer()
          Text("\(scrum.lengthInMinutes) minutes")
        }
        HStack {
          Label("Theme", systemImage: "paintpalette")
          Spacer()
          Text(scrum.theme.name)
            .padding(4)
            .foregroundStyle(scrum.theme.accentColor)
            .background(scrum.theme.mainColor)
            .clipShape(.rect(cornerRadius: 4))
        }
      }, header: {
        Text("Meeting Info")
      })
      Section(content: {
        ForEach(scrum.attendees) { attendee in
          Label(attendee.name, systemImage: "person")
          Label(
            title: {
              Text(attendee.name)
            },
            icon: {
              Image(systemName: "person").foregroundStyle(.red)
            }
          )
        }
      }, header: {
        Text("Attendees")
      })
    }
    .navigationTitle(scrum.title)
    .toolbar {
      Button("Edit") {
        isPresentingEditView = true
      }
    }
    .sheet(isPresented: $isPresentingEditView, content: {
      NavigationStack {
        DetailEditView()
          .navigationTitle(scrum.title)
          .toolbar {
            ToolbarItem(placement: .cancellationAction) {
              Button("Cancel") {
                isPresentingEditView = false
              }
            }
            ToolbarItem(placement: .confirmationAction) {
              Button("Done") {
                isPresentingEditView = false
              }
            }
          }
      }
    })
  }
}

#Preview("Hello world!") {
  NavigationStack {
    DetailView(scrum: DailyScrum.sampleData[0])
  }
}

