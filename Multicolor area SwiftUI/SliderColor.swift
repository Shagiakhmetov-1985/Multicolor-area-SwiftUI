//
//  SliderColor.swift
//  Multicolor area SwiftUI
//
//  Created by Marat Shagiakhmetov on 09.06.2021.
//

import SwiftUI

struct SliderColor: View {
    @Binding var sliderValue: Double
    @State var textValue = ""
    var colorValue: Color
    var body: some View {
        HStack {
            LabelColor(textValue: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .frame(width: 200, height: 40)
                .accentColor(colorValue)
                .onChange(of: sliderValue, perform: { value in
                    textValue = "\(lround(value))"
                })
            
            TextFieldColor(textValue: $textValue, value: $sliderValue)
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
            sliderValue = Double(textValue) ?? 0
        }
    }
}

struct SliderColor_Previews: PreviewProvider {
    static var previews: some View {
        SliderColor(sliderValue: .constant(100), textValue: "", colorValue: .primary)
    }
}
