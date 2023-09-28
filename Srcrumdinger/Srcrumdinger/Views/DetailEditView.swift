//
//  DetailEditView.swift
//  Srcrumdinger
//
//  Created by 송하민 on 9/28/23.
//

import SwiftUI

struct DetailEditView: View {
  
  @Binding var scrum: DailyScrum
  @State private var newAttendeeName = ""
  
  var body: some View {
    Form {
      Section(content: {
        TextField("Title", text: $scrum.title)
        HStack {
          Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
            Text("Length")
          }
          Spacer()
          Text("\(scrum.lengthInMinutes) minutes")
        }
        ThemePicker(selection: $scrum.theme)
      }, header: {
        Text("Meeting Info")
      })
      
      Section(content: {
        ForEach(scrum.attendees, content: { attendee in
          Text(attendee.name)
        })
        .onDelete(perform: { indexSet in
          scrum.attendees.remove(atOffsets: indexSet)
        })
        HStack {
          TextField("New Attendee", text: $newAttendeeName)
          Button(action: {
            withAnimation {
              let attendees = DailyScrum.Attendee(name: newAttendeeName)
              scrum.attendees.append(attendees)
              newAttendeeName = ""
            }
          }, label: {
            Image(systemName: "plus.circle.fill")
          })
        }
        .disabled(newAttendeeName.isEmpty)
      }, header: {
        Text("Attendees")
      })
      
    }
  }
}

#Preview {
  DetailEditView(scrum: .constant(DailyScrum.sampleData[0]))
}

