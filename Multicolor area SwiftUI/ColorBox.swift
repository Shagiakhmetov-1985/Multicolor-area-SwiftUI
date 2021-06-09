//
//  Color box.swift
//  Multicolor area SwiftUI
//
//  Created by Marat Shagiakhmetov on 05.06.2021.
//

import SwiftUI

struct ColorBox: View {
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    var body: some View {
        Color(
            red: redColor / 255,
            green: greenColor / 255,
            blue: blueColor / 255
        )
            .frame(width: 340, height: 150)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 5)
            )
            .shadow(radius: 15)
            .padding()
    }
}

struct ColorBox_Previews: PreviewProvider {
    static var previews: some View {
        ColorBox(redColor: 0, greenColor: 0, blueColor: 0)
    }
}
