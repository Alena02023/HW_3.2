//
//  SliderValueLabel.swift
//  HW_3.2
//
//  Created by Алена on 02.04.2021.
//

import SwiftUI

struct SliderValueLabel: View {

    let value: Double

    var body: some View {
        Text("\(lround(value))")
            .frame(width: 35, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct SliderValueLabel_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.gray
        SliderValueLabel(value: 128)
        }
    }
}
