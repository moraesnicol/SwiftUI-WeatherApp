//
//  WeatherViewModel.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Moraes on 20/06/25.
//

import SwiftUI

class WeatherViewModel: ObservableObject {
    @Published var weatherDays: [WeatherDay] = []
    
    init() {
        loadWeatherData()
    }
    
    func loadWeatherData() {
        
        weatherDays = [
            WeatherDay(dayOfWeek: "Seg", imageName: "cloud.sun.fill", temperature: 21),
                        WeatherDay(dayOfWeek: "Ter", imageName: "sun.max.fill", temperature: 38),
                        WeatherDay(dayOfWeek: "Qua", imageName: "wind.snow", temperature: 41),
                        WeatherDay(dayOfWeek: "Qui", imageName: "sunset.fill", temperature: 41),
                        WeatherDay(dayOfWeek: "Sex", imageName: "cloud.sun.fill", temperature: 41),
                        WeatherDay(dayOfWeek: "Sáb", imageName: "cloud.sun.fill", temperature: 41),
                        WeatherDay(dayOfWeek: "Dom", imageName: "cloud.sun.fill", temperature: 41),
        ]
        
    }
}
