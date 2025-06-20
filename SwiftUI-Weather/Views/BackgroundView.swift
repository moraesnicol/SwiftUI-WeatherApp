//
//  BackgroundView.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Moraes on 19/06/25.
//

import SwiftUI

struct BackgroundView: View {
    
    var topColor: Color = .blue
    var bottomColor: Color = .lightBlue
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [topColor, bottomColor]),
            startPoint: .topLeading, endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}
