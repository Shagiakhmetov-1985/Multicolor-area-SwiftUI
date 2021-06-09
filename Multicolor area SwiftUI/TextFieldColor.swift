//
//  TextFieldColor.swift
//  Multicolor area SwiftUI
//
//  Created by Marat Shagiakhmetov on 09.06.2021.
//

import SwiftUI

struct TextFieldColor: View {
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    var body: some View {
        TextField("", text: $textValue, onCommit: checkValue)
        .alert(isPresented: $showAlert) {
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
}

extension TextFieldColor {
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        textValue = "0"
    }
}

struct TextFieldColor_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldColor(textValue: .constant("0"), value: .constant(0))
    }
}
