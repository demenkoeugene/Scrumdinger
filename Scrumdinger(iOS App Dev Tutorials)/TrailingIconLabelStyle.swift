//
//  TrailingIconLabelStyle.swift
//  Scrumdinger(iOS App Dev Tutorials)
//
//  Created by Eugene Demenko on 02.03.2023.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
                   configuration.title
                   configuration.icon
               }
    }
}
extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
