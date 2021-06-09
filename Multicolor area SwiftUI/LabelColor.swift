//
//  TextLabel.swift
//  Multicolor area SwiftUI
//
//  Created by Marat Shagiakhmetov on 09.06.2021.
//

import SwiftUI

struct LabelColor: View {
    let textValue: Double
    var body: some View {
        Text("\(lround(textValue))")
            .frame(width: 60, height: 40)
            .font(.system(size: 25))
            .foregroundColor(.black)
    }
}

struct LabelColor_Previews: PreviewProvider {
    static var previews: some View {
        LabelColor(textValue: 0)
    }
}
