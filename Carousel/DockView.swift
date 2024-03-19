//
//  DockView.swift
//  Carousel
//
//  Created by Lahesh on 19/03/2024.
//

import Foundation

import SwiftUI

struct DockView: View {
    var body: some View {
        HStack(spacing: 0) {
            // Replace these image names with your actual app icons
            AppIconView(imageName: "phone")
            Spacer()
            AppIconView(imageName: "messages")
            Spacer()
            AppIconView(imageName: "arc")
            Spacer()
            AppIconView(imageName: "apple-maps")
        }
        
        .padding( 16)
//                .frame(height: 80) // Set dock height
                .background(.thinMaterial) // Ultrathin background
                .cornerRadius(26)
                .padding(16) // Add 12px margin at the bottom
                
                
                
    }
}

struct AppIconView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 60, height: 60)
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
//            .shadow(radius: 5)
    }
}
