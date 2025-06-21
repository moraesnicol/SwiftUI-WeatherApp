//
//  WeatherDayRow.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Moraes on 20/06/25.
//

import SwiftUI

struct WeatherDayRow: View {
    
    let days: [WeatherDay]
    
    var body: some View {
        HStack(spacing: 20) {
            
            ForEach(days) { day in HorizontalWeatherDayView(
                                    dayOfWeek: day.dayOfWeek,
                                    imageName: day.imageName,
                                    temperature: day.temperature
                                    )
            }
        }
    }
}
