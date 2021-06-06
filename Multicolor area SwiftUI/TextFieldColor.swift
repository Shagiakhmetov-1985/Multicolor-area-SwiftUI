//
//  TextFieldColor.swift
//  Multicolor area SwiftUI
//
//  Created by Marat Shagiakhmetov on 05.06.2021.
//

import SwiftUI

struct TextFieldColor: View {
    @State var value = ""
    
    var body: some View {
        TextField("", text: $value)
            .frame(width: 60, height: 40)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .overlay(RoundedRectangle(cornerRadius: 9)
                        .stroke(lineWidth: 3)
                        .foregroundColor(.black)
            )
            .shadow(radius: 7)
    }
}

struct TextFieldColor_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldColor(value: "")
    }
}
