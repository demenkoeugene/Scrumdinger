//
//  ContentView.swift
//  Scrumdinger(iOS App Dev Tutorials)
//
//  Created by Eugene Demenko on 02.03.2023.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack{
                VStack(alignment: .leading){
                    Text("Second Elapsed").font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Seconds Remaining").font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }.accessibilityElement(children: .ignore)
                .accessibilityLabel("Time remaining")
                .accessibilityValue("10 minutes")
            Spacer()
            Circle().stroke(lineWidth: 24)
            Spacer()
            HStack{
                Text("Speaker 1 of 3")
                Button(action: {}){
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
