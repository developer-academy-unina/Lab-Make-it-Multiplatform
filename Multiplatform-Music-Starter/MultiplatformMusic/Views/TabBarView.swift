//
//  TabBarView.swift
//  MultiplatformMusic
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import SwiftUI

struct TabBarView: View {
    
    var body: some View {
#if os(macOS)
        return view.frame(minWidth: 1420, minHeight: 1080)
#else
        return view
#endif
    }
    
    private var view: some View {
        TabView {
            Group {
                LibraryView()
                    .tabItem {
                        Image("LibraryIcon")
                            .renderingMode(.template)
                        Text("Library")
                    }
                LibraryView()
                    .tabItem {
                        Label("Listen Now", systemImage: "play.circle.fill")
                    }
                LibraryView()
                    .tabItem {
                        Label("Browse", systemImage: "square.grid.2x2.fill")
                    }
                LibraryView()
                    .tabItem {
                        Label("Radio", systemImage: "dot.radiowaves.left.and.right")
                    }
                LibraryView()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
            }
#if os(iOS)
            .toolbar(.visible, for: .tabBar)
            .toolbarBackground(Color(uiColor: .systemGray6), for: .tabBar)
#endif
        }
    }
}


struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
