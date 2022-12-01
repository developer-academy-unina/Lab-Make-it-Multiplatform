//
//  WatchButton.swift
//  WatchOSMusic Watch App
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import SwiftUI

struct WatchButton: View {
    
    var label: String
    var imageSystemName: String
    var action: () -> Void
    
    init(_ label: String, imageSystemName: String, action: @escaping () -> Void) {
        self.label = label
        self.imageSystemName = imageSystemName
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: imageSystemName)
                    .foregroundColor(.pink)
                    .frame(width: 30)
                Text(label)
                Spacer()
            }
        }
    }
}


struct WatchButton_Previews: PreviewProvider {
    static var previews: some View {
        WatchButton("Now Playing", imageSystemName: "chart.bar.xaxis", action: {})
    }
}
