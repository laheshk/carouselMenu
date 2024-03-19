//
//  AppItem.swift
//  Carousel
//
//  Created by Lahesh on 19/03/2024.
//
import Foundation
struct AppItem: Identifiable {
    let id = UUID()
    let imageName: String
    let appName: String
}
let appItems: [AppItem] = [
    AppItem(imageName: "1password", appName: "1Password"),
    AppItem(imageName: "itunes", appName: "Apple Itunes"),
    AppItem(imageName: "activity", appName: "Fitness"),
    AppItem(imageName: "grocery", appName: "Grocery"),
    AppItem(imageName: "habitminder", appName: "Habit Minder"),
    AppItem(imageName: "mail", appName: "Mail"),
    AppItem(imageName: "maps", appName: "Apple Maps"),
    AppItem(imageName: "messenger", appName: "Messenger"),
    AppItem(imageName: "music", appName: "Music"),
    AppItem(imageName: "podcasts", appName: "Podcasts"),
    AppItem(imageName: "reminders", appName: "Reminders"),
    AppItem(imageName: "slack", appName: "Slack"),
    AppItem(imageName: "spotify", appName: "Spotify"),
    AppItem(imageName: "stocks", appName: "Stocks"),
    AppItem(imageName: "wallet", appName: "Wallet"),
    AppItem(imageName: "watch", appName: "Watch Feeds"),
    AppItem(imageName: "1password", appName: "1Password"),
    AppItem(imageName: "itunes", appName: "Apple Itunes"),
    AppItem(imageName: "activity", appName: "Fitness"),
    AppItem(imageName: "grocery", appName: "Grocery"),
    AppItem(imageName: "habitminder", appName: "Habit Minder"),
    AppItem(imageName: "mail", appName: "Mail"),
    AppItem(imageName: "maps", appName: "Apple Maps"),
    AppItem(imageName: "messenger", appName: "Messenger"),
    AppItem(imageName: "music", appName: "Music")
    
    // Add more items as needed
]
