//
//  WatchOSMusicApp.swift
//  WatchOSMusic Watch App
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import SwiftUI

// MARK: This entry file is targeted for Apple Watch only and will be compiled exclusively only when the app is launched on that specific platform. All the files targeted with other platforms will not be compiled in this case.

@main
struct WatchOSMusic_Watch_AppApp: App {
    var body: some Scene {
        WindowGroup {
            WatchEntryView()
        }
    }
}
