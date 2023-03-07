//
//  Slide.swift
//  Scrumdinger(iOS App Dev Tutorials)
//
//  Created by Eugene Demenko on 05.03.2023.
//

import SwiftUI

struct Slide: View {
        @State private var sliderValue: CGFloat = 50
        private var minSliderValue: CGFloat = 10
        private var maxSliderValue: CGFloat = 100
        var body: some View {
            VStack {
                Text("Slider value: \(Int(sliderValue))").foregroundColor(.blue).font(.title)
                MySlider(value: $sliderValue, minValue: minSliderValue, maxValue: maxSliderValue)
            }
        }
    }

    struct MySlider : View {
        @Binding var value: CGFloat
        var minValue: CGFloat
        var maxValue: CGFloat
        var body: some View {
            HStack {
                Text("\(Int(minValue))")
                    .foregroundColor(.blue)
                Slider(value: $value, in: minValue...maxValue, step: 1)
                Text("\(Int(maxValue))")
                    .foregroundColor(.blue)
            }
            .padding()
        }
    }

    struct Slide_Preview: PreviewProvider {
        static var previews: some View {
            Slide()
        }
    }
