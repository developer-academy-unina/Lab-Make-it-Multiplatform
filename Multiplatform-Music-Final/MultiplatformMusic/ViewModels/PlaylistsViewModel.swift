//
//  PlaylistsViewModel.swift
//  MultiplatformMusic
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import SwiftUI

class PlaylistsViewModel: ObservableObject {
    
    @Published var playlists: [Playlist] = [
        Playlist(
            imageName: "Playlist0",
            name: "Pop Hits Italia",
            category: "Apple Music Pop Italiano"
        ),
        Playlist(
            imageName: "Playlist1",
            name: "RapIT",
            category: "Apple Music Rap Italiano"
        ),
        Playlist(
            imageName: "Playlist2",
            name: "Today's Hits",
            category: "Apple Music"
        ),
        Playlist(
            imageName: "Playlist3",
            name: "Laura Pausini",
            category: "Apple Music Pop Italiano"
        ),
        Playlist(
            imageName: "Playlist4",
            name: "A-List Pop",
            category: "Apple Music Pop"
        ),
        Playlist(
            imageName: "Playlist5",
            name: "Sanremo 2022",
            category: "Festival Italiano"
        ),
        Playlist(
            imageName: "NewMusic5",
            name: "Loredana Bertè",
            category: "Rock Italiano"
        ),
        Playlist(
            imageName: "PreOrder2",
            name: "Best of RHCP",
            category: "Rock"
        )
    ]
    
}
