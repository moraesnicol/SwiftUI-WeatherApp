//
//  MainWeatherDayView.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Moraes on 19/06/25.
//

import SwiftUI

struct MainWeatherDayView: View {
    
    @State private var isAnimating = false
    var imageName: String?
    var temperature: Int?
    
    var body: some View {
        CityTextView(cityName: "Rio de Janeiro, RJ")
        VStack(spacing: 2) {
            Image(systemName: imageName ?? "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                
                .animation(.easeInOut(duration: 0.9).repeatCount(3), value: isAnimating)
                .frame(width: isAnimating ? 130: 110, height: isAnimating ? 130 : 110)
                .onAppear {
                    isAnimating = true
                }
            
            Text("\(temperature ?? 41)°C")
                .font(.system(size: 70, weight: .medium, design: .rounded))
                .foregroundColor(.white)
                
        }
    }
}
