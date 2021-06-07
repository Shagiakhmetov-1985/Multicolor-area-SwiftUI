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
    @State private var redTextField = ""
    @State private var greenTextField = ""
    @State private var blueTextField = ""
    @State private var alertPresented = false
    
    var body: some View {
        VStack {
            ColorBox(
                redColor: CGFloat(redValue),
                greenColor: CGFloat(greenValue),
                blueColor: CGFloat(blueValue)
            )
            
            HStack {
                LabelColor(textValue: String(lround(redValue)))
                SliderColor(sliderValue: $redValue, colorValue: .red)
                TextFieldColor(text: $redTextField, isPresented: $alertPresented, value: $redValue)
            }
            HStack {
                LabelColor(textValue: String(lround(greenValue)))
                SliderColor(sliderValue: $greenValue, colorValue: .green)
                TextFieldColor(text: $greenTextField, isPresented: $alertPresented, value: $greenValue)
            }
            HStack {
                LabelColor(textValue: String(lround(blueValue)))
                SliderColor(sliderValue: $blueValue, colorValue: .blue)
                TextFieldColor(text: $blueTextField, isPresented: $alertPresented, value: $blueValue)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LabelColor: View {
    let textValue: String
    var body: some View {
        Text(textValue)
            .frame(width: 60, height: 40)
            .font(.system(size: 25))
            .foregroundColor(.black)
    }
}

struct SliderColor: View {
    @Binding var sliderValue: Double
    var colorValue: Color
    var body: some View {
        Slider(value: $sliderValue, in: 0...255, step: 1)
            .frame(width: 200, height: 40)
            .accentColor(colorValue)
    }
}

struct TextFieldColor: View {
    @Binding var text: String
    @Binding var isPresented: Bool
    @Binding var value: Double
    var body: some View {
        TextField("", text: $text, onCommit: {
            checkValue()
        })
        .alert(isPresented: $isPresented) {
            Alert(title: Text("Wrong Format!"), message: Text("Please enter value from 0 to 255"))
        }
        .frame(width: 60, height: 40)
        .font(.system(size: 25))
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .multilineTextAlignment(.trailing)
        .overlay(RoundedRectangle(cornerRadius: 9)
                    .stroke(lineWidth: 3)
                    .foregroundColor(.black)
        )
        .shadow(radius: 7)
    }
    
    private func checkValue() {
        if let _ = Int(text) {
        } else {
            isPresented.toggle()
            value = Double(text) ?? 0
            print(value)
        }
    }
}
