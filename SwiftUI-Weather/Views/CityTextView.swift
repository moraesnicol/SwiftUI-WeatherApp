//
//  CityTextView.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Moraes on 19/06/25.
//

import SwiftUI

struct CityTextView: View {
    
    var cityName: String?
    
    var body: some View {
        Text(cityName ?? "Imbituba, SC")
            .font(.system(size: 32, weight: .medium, design: .rounded))
            .foregroundColor(.white)
    }
}
