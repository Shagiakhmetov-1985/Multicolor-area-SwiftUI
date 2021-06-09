//
//  ContentView.swift
//  Multicolor area SwiftUI
//
//  Created by Marat Shagiakhmetov on 05.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    var body: some View {
        VStack {
            ColorBox(
                redColor: redValue,
                greenColor: greenValue,
                blueColor: blueValue
            )
            
            SliderColor(sliderValue: $redValue, colorValue: .red)
            SliderColor(sliderValue: $greenValue, colorValue: .green)
            SliderColor(sliderValue: $blueValue, colorValue: .blue)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
