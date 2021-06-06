//
//  Color box.swift
//  Multicolor area SwiftUI
//
//  Created by Marat Shagiakhmetov on 05.06.2021.
//

import SwiftUI

struct ColorBox: View {
    var body: some View {
        Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            .ignoresSafeArea()
            .frame(width: 340, height: 150)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 5)
            )
            .shadow(radius: 15)
    }
}

struct ColorBox_Previews: PreviewProvider {
    static var previews: some View {
        ColorBox()
    }
}
