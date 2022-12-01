//
//  MusicEntryCellView.swift
//  MultiplatformMusic
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import SwiftUI

struct MusicEntryCellView: View {
    
    let image: Image
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            image
                .foregroundColor(.white)
                .font(.largeTitle)
                .frame(width: 183, height: 178)
                .background(.gray)
                .cornerRadius(5)
            Text(title)
                .font(.system(size: 16))
                .fixedSize(horizontal: false, vertical: true)
            Text(subtitle)
                .font(.system(size: 16))
                .foregroundColor(.secondary)
        }
        .frame(width: 183)
    }
}


struct MusicEntryCellView_Previews: PreviewProvider {
    static var previews: some View {
        MusicEntryCellView(image: Image("Playlist0"), title: "Pop Hits Italia", subtitle: "Apple Music Pop Italiano")
    }
}
