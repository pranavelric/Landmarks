//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Pranav Choudhary on 20/08/23.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
     #if !os(watchOS)
     .commands {
         LandmarkCommands()
     }
     #endif
        
       #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
       #endif
        
        #if os(macOS)
       Settings {
           LandmarkSettings()
       }
       #endif
    }
}
