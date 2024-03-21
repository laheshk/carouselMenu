//
//  ProgressiveBlurView.swift
//  Carousel
//
//  Created by Lahesh on 20/03/2024.
//

import Foundation
import SwiftUI
import Combine


struct ProgressiveBlurComponent: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack {
            Color.clear
                
                .frame(height: 200)
                .background(
                    LinearGradient(gradient: Gradient(colors: [
                        colorScheme == .dark ? Color.black.opacity(1) : Color.white.opacity(1),
                        Color.clear
                    ]), startPoint: .top, endPoint: .bottom)
                )
//                .blur(radius: 10)
        }
    }
}
