//
//  PlaylistsView.swift
//  MultiplatformMusic
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import SwiftUI

struct PlaylistsView: View {
    
    @StateObject var viewModel = PlaylistsViewModel()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(viewModel.playlists) { playlist in
                    MusicEntryCellView(image: playlist.image, title: playlist.name, subtitle: playlist.category)
                }
            }
            .padding([.leading, .trailing], 18)
            .padding(.bottom, 25)
        }
    }
}


struct PlaylistsView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistsView()
    }
}
