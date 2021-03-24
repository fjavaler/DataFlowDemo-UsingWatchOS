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
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
