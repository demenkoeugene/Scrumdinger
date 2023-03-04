//
//  Scrumdinger_iOS_App_Dev_Tutorials_App.swift
//  Scrumdinger(iOS App Dev Tutorials)
//
//  Created by Eugene Demenko on 02.03.2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
//struct Scrumdinger_iOS_App_Dev_Tutorials_App: App {
//    var scrum = DailyScrum.sampleData[0]
//    var body: some Scene {
//        WindowGroup {
//                CardView(scrum: scrum)
//        }
//    }
//}

