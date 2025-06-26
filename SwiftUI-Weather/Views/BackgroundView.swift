//
//  BackgroundView.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Moraes on 19/06/25.
//

import SwiftUI

struct BackgroundView: View {
    
    var isNight: Bool
    
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [isNight ? .black : .blue,
                                    isNight ? .gray : Color(.lightBlue)]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}
