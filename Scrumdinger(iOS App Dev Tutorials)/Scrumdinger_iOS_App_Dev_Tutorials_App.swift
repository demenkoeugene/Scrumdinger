//
//  Scrumdinger_iOS_App_Dev_Tutorials_App.swift
//  Scrumdinger(iOS App Dev Tutorials)
//
//  Created by Eugene Demenko on 02.03.2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
   
    @StateObject private var store = ScrumStore()
        
        var body: some Scene {
            WindowGroup {
                NavigationView {
                    ScrumsView(scrums: $store.scrums) {
                                       ScrumStore.save(scrums: store.scrums) { result in
                                           Task {
                                               do {
                                                        try await ScrumStore.save(scrums: store.scrums)
                                                    } catch {
                                                        fatalError("Error saving scrums.")
                                                    }
                                           }
                                       }
                                   }
                }
                .task {
                               do {
                                   store.scrums = try await ScrumStore.load()
                               } catch {
                                   fatalError("Error loading scrums.")
                    }
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

