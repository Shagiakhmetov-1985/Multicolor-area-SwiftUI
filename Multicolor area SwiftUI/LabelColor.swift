//
//  LabelColor.swift
//  Multicolor area SwiftUI
//
//  Created by Marat Shagiakhmetov on 06.06.2021.
//

import SwiftUI

struct LabelColor: View {
    let textValue: String
    
    var body: some View {
        Text(textValue)
            .frame(width: 60, height: 40)
            .font(.system(size: 30))
            .foregroundColor(.black)
    }
}

struct LabelColor_Previews: PreviewProvider {
    static var previews: some View {
        LabelColor(textValue: "0")
    }
}
