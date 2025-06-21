//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Moraes on 13/06/25.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var viewModel = WeatherViewModel()
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                MainWeatherDayView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: isNight ? 21 : 33)
                    .padding(.bottom, 40)
                
                
                WeatherDayRow(
                    days: Array(viewModel.weatherDays.prefix(5))
                )
                
                WeatherDayRow(
                    days: Array(viewModel.weatherDays.suffix(2))
                )
        
                .padding(.bottom, 20)
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                
            }
        }
    }
    
   
    
    
    
    
}

#Preview {
    MainView()
}

