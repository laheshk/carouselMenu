//
//  ContentView.swift
//  Carousel
//
//  Created by Lahesh on 18/03/2024.
//
import SwiftUI


struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme // Detect light or dark mode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 70) { // Adjust spacing to 12px
                    ForEach(appItems) { appItem in
                        GeometryReader { geometry in
                            HStack {
                                Group { // Wrap both Circle and Text in a Group
                                    Image(appItem.imageName)
                                        .resizable()
                                        .frame(width: 36, height: 36)
                                        .foregroundColor(colorScheme == .dark ? .yellow : .blue) // Adapt colors
                                        .background(Color.gray) // Subtle grey background
                                        .cornerRadius(20) // Rounded corners
                                    
                                    Text(appItem.appName)
                                        .font(.system(size: 16))
                                        .fontWeight(.medium)
                                        .foregroundColor(colorScheme == .dark ? .white : .black) // Adapt text color
                                    
                                }
                                .frame(height: 40) // Set fixed height
                            }.scaleEffect(reverseScale(for: geometry), anchor: .leading) // Reverse scale effect
                                .padding(.leading, 20) // Left alignment with 30px padding
                                .frame(maxWidth: .infinity, alignment: .leading) // Take full width and left-align
                                .frame(height: 40) // Set fixed height
                                .position(x: geometry.size.width / 2, y: geometry.size.height / 2) // Center vertically
                            
                            
                        }
                        
                    }
                    
                }
                
                .padding(.top, 50)
                
            }
            
            .overlay(DockView(), alignment: .bottom)
            .edgesIgnoringSafeArea(.bottom)
            .persistentSystemOverlays(.hidden)
        
        }
    }
    
    private func reverseScale(for geometry: GeometryProxy) -> CGFloat {
        let yOffset = geometry.frame(in: .global).midY
        let screenHeight = UIScreen.main.bounds.height
        let scale: CGFloat
        if yOffset < screenHeight / 2 {
            // Scale down when above the center
            scale = max(1 + abs(yOffset / 450), 0.5)
        } else {
            // Scale down when below the center
            scale = max(1 + abs((screenHeight - yOffset) / 450), 0.5)
        }
        return scale
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
