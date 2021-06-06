//
//  SliderColor.swift
//  Multicolor area SwiftUI
//
//  Created by Marat Shagiakhmetov on 06.06.2021.
//

import SwiftUI

struct SliderColor: View {
    @State var sliderValue = Double.random(in: 0...255)
    let colorValue: Color
    
    var body: some View {
        Slider(value: $sliderValue, in: 0...255, step: 1)
            .frame(width: 200, height: 40)
            .accentColor(colorValue)
    }
}

struct SliderColor_Previews: PreviewProvider {
    static var previews: some View {
        SliderColor(colorValue: .primary)
    }
}
