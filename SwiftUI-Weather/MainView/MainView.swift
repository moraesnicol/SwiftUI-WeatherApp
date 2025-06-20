//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Moraes on 13/06/25.
//

import SwiftUI

struct MainView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black : .blue, bottomColor: isNight ?  .gray : .lightBlue)
            VStack {
                   MainWeatherDayView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 21)
                    .padding(.bottom, 40)
                HStack(spacing: 20) {
                    HorizontalWeatherDayView(dayOfWeek: "Seg", imageName: "cloud.sun.fill", temperature: 21)
                    HorizontalWeatherDayView(dayOfWeek: "Ter", imageName: "sun.max.fill", temperature: 38)
                    HorizontalWeatherDayView(dayOfWeek: "Qua", imageName: "wind.snow", temperature: 41)
                    HorizontalWeatherDayView(dayOfWeek: "Qui", imageName: "sunset.fill", temperature: 41)
                    HorizontalWeatherDayView(dayOfWeek: "Sex", imageName: "cloud.sun.fill", temperature: 41)
                        
                }
                .padding(.bottom, 20)
                HStack {
                    
                    HorizontalWeatherDayView(dayOfWeek: "Sáb", imageName: "cloud.sun.fill", temperature: 41)
                        .padding(.horizontal, 20)
                    HorizontalWeatherDayView(dayOfWeek: "Dom", imageName: "cloud.sun.fill", temperature: 41)
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                Spacer()
            }
        }
    }
}
 
#Preview {
    MainView()
}





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

