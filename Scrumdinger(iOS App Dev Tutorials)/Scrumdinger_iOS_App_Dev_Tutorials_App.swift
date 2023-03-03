//
//  Scrumdinger_iOS_App_Dev_Tutorials_App.swift
//  Scrumdinger(iOS App Dev Tutorials)
//
//  Created by Eugene Demenko on 02.03.2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
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

