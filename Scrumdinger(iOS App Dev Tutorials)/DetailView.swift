//
//  DetailView.swift
//  Scrumdinger(iOS App Dev Tutorials)
//
//  Created by Eugene Demenko on 02.03.2023.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        List{
            Section(header: Text("Meeting Info")) {
                NavigationLink(destination: MeetingView()) {
                    Label("Start Meeting", systemImage: "timer").foregroundColor(.accentColor)
                }
            }
            HStack {
                Label("Length", systemImage: "clock")
                    .foregroundColor(.accentColor)
                Spacer()
                Text("\(scrum.lengthInMinutes) minutes")
            }
            .accessibilityElement(children: .combine)
            HStack {
                Label("Theme", systemImage: "paintpalette") .foregroundColor(.accentColor)
                Spacer()
                Text(scrum.theme.name)
                                        .padding(4)
                                        .foregroundColor(scrum.theme.accentColor)
                                        .background(scrum.theme.mainColor)
                                        .cornerRadius(4)
                                       
            }
            Section(header: Text("Attendees")) {
                    ForEach(scrum.attendees) { attendee in
                        Label(attendee.name, systemImage: "person").foregroundColor(.accentColor)
                    }
            }
            .navigationTitle(scrum.title)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
