//
//  DataFlowDemoUsingWatchOSApp.swift
//  DataFlowDemoUsingWatchOS WatchKit Extension
//
//  Created by Frederick Javalera on 3/24/21.
//

import SwiftUI

@main
struct DataFlowDemoUsingWatchOSApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                let episode = Episode(title: "Amatriciana", showTitle: "Caffé Macs Radio")
                ContentView(episode: episode)
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
