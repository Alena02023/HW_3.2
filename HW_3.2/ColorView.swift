//
//  ColorView.swift
//  HW_3.2
//
//  Created by Алена on 02.04.2021.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(
            red: red / 255,
            green: green / 255,
            blue: blue / 255
        )
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4)
        )
            .frame(height: 130)
    }
}


struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 10, green: 100, blue: 100)
    }
}
