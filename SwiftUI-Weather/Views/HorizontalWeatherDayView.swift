//
//  WeatherDayView.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Moraes on 19/06/25.
//

import SwiftUI

struct HorizontalWeatherDayView: View {
    
    var dayOfWeek: String?
    var imageName: String?
    var temperature: Int?
    @State private var isAnimating = false
    
    var body: some View {
        VStack(spacing:2) {
            
            Text(dayOfWeek ?? "Domingo")
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.white)
            
            Image(systemName: imageName ?? "cloud.sun.fill")
                .renderingMode(.original)
                .scaleEffect(isAnimating ? 2.5 : 1.5)
                .animation(.easeInOut(duration: 1).repeatCount(3), value: isAnimating)
                            .onAppear {
                                isAnimating = true
                            }
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .padding(.top, 10)
            
            Text("\(temperature ?? 42)°")
                .font(.system(size: 28, weight: .medium, design: .rounded))
                .foregroundColor(.white)
        }
    }
}

