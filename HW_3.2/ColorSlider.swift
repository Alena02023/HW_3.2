//
//  ColorSlider.swift
//  HW_3.2
//
//  Created by Алена on 02.04.2021.
//

import SwiftUI

struct ColorSlider: View {
   
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    let color: Color

    var body: some View {
        
        HStack{
        SliderValueLabel(value: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255)
                .accentColor(color)
                .onChange(of: sliderValue) { _ in
                    textValue = "\(lround(sliderValue))"
                }
            SliderValueTF(textValue: $textValue, value: $sliderValue)
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

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            ColorSlider(sliderValue: .constant(100), color: .red)
        }
    }
}
