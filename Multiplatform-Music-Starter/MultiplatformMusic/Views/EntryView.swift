//
//  EntryView.swift
//  MultiplatformMusic
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22. 
//

import SwiftUI

struct EntryView: View {
    
    // TODO: Set a variable only in iOS to recognize if the current device is an iPhone or an iPad
    
    var body: some View {
        
        /*
         
         TODO: Set which view to show based on the device, using Conditional Compilation Blocks.
         
         iPhone: TabBarView
         iPad: NavigationSplitView with SidebarView as sidebar and LibraryView as detail
         MacBook: NavigationSplitView with SidebarView as sidebar and LibraryView as detail
         Apple TV: TabBarView
         Apple Watch: is it necessary? 👀 
         
         */
        
        TabBarView()
    }
}


struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
#if os(iOS)
        Group {
            EntryView()
                .previewDevice("iPhone 14 Pro")
                .previewDisplayName("iPhone 14 Pro")
            EntryView()
                .previewDevice("iPad Pro (12.9-inch) (6th generation)")
                .previewDisplayName("iPad Pro (12.9-inch)")
                .previewInterfaceOrientation(.landscapeLeft)
        }
#elseif os(macOS)
        EntryView()
            .previewDisplayName("My Mac")
#elseif os(tvOS)
        EntryView()
            .previewDisplayName("Apple TV")
#endif
    }
}
