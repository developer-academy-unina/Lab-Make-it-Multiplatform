//
//  LibraryView.swift
//  MultiplatformMusic
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    AppleMusicButton()
                    Text("Browse")
                        .font(.system(size: 35))
                        .fontWeight(.bold)
                    Divider()
                        .background(.gray)
                        .offset(x: 0, y: -15)
                }
                .padding([.leading, .trailing], 18)
                SuggestedContentView()
                SectionHeaderView(sectionTitle: "Playlists You Can't Miss", buttonText: "See All")
                    .padding([.leading, .trailing], 18)
                PlaylistsView()
                SectionHeaderView(sectionTitle: "New Music", buttonText: "See All")
                    .padding([.leading, .trailing], 18)
                NewMusicView()
                SectionHeaderView(sectionTitle: "Pre-Orders", buttonText: "See All")
                    .padding([.leading, .trailing], 18)
                PreOrdersView()
                    .padding(.bottom, 100)
            }
            CurrentSongView()
        }
#if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
#endif
    }
}


struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
