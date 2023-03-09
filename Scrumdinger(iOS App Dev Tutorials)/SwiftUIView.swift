//
//  SwiftUIView.swift
//  Scrumdinger(iOS App Dev Tutorials)
//
//  Created by Eugene Demenko on 09.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var number: Int = 0
    
    var body: some View {
        VStack {
            Text("The number is: \(number)")
            Button {
                Task {
                    number = try await fetchRandomNumber()
                }
            } label: {
                Text("Update Random Number")
            }
        }
    }
    
    func fetchRandomNumber() async -> Int {
        await Task.sleep(1_000_000_000)
        return Int.random(in: 1...100)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
