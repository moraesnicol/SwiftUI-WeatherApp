//
//  WeatherDay.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Moraes on 20/06/25.
//

import SwiftUI

struct WeatherDay: Identifiable {
    let id = UUID()
    let dayOfWeek: String
    let imageName: String
    let temperature: Int
}
