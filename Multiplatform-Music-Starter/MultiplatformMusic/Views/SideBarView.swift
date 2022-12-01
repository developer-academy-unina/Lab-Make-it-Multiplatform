//
//  SideBarView.swift
//  MultiplatformMusic
//
//  Created by Luca Palmese on 30/10/22.
//

#if !os(tvOS)
import SwiftUI

struct SideBarView: View {
    
    enum ScreenTag: Hashable {
        case listenNow, radio, recentlyAdded, artists, albums, songs, iTunesStore, allPlaylists
    }
    
    @State var selection: ScreenTag? = .listenNow
    @State var searchText: String = ""
    
    var body: some View {
        List(selection: $selection) {
            Section(header:
                        Text("Apple Music")
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.secondary)
            ) {
                NavigationLink(
                    destination: LibraryView(),
                    label: {
                        Label("Listen Now", systemImage: "play.circle")
                    }
                )
                NavigationLink(
                    destination: LibraryView(),
                    label: {
                        Label("Radio", systemImage: "dot.radiowaves.left.and.right")
                    }
                )
            }
            Section(header:
                        Text("Library")
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.secondary)
            ) {
                NavigationLink(
                    destination: LibraryView(),
                    label: {
                        Label("Recently Added", systemImage: "clock")
                    }
                )
                NavigationLink(
                    destination: LibraryView(),
                    label: {
                        Label("Artists", systemImage: "music.mic")
                    }
                )
                NavigationLink(
                    destination: LibraryView(),
                    label: {
                        Label("Albums", systemImage: "square.stack")
                    }
                )
                NavigationLink(
                    destination: LibraryView(),
                    label: {
                        Label("Songs", systemImage: "music.note")
                    }
                )
            }
            Section(header:
                        Text("Store")
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.secondary)
            ) {
                NavigationLink(
                    destination: LibraryView(),
                    label: {
                        Label("iTunes Store", systemImage: "star")
                            .accentColor(.purple)
                    }
                )
            }
            Section(header:
                        Text("Playlists")
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.secondary)
            ) {
                NavigationLink(
                    destination: LibraryView(),
                    label: {
                        Label("All Playlists", systemImage: "square.grid.3x3")
                            .accentColor(.gray)
                    }
                )
            }
        }
#if os(iOS)
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
#else
        .searchable(text: $searchText)
#endif
        .navigationTitle("Music")
        .listStyle(SidebarListStyle())
    }
}


struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}
#endif
