//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Moraes on 20/06/25.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        
        Text(title)
            .frame(width: 280, height: 60)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .cornerRadius(10)
    }
}




