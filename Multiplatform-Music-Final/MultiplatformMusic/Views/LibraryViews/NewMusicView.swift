//
//  NewMusicView.swift
//  MultiplatformMusic
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import SwiftUI

struct NewMusicView: View {
    
    @StateObject var viewModel = NewMusicViewModel()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(viewModel.newMusic) { newMusic in
                    MusicEntryCellView(image: newMusic.image, title: newMusic.title, subtitle: newMusic.artist)
                }
            }
            .padding([.leading, .trailing], 18)
            .padding(.bottom, 25)
        }
    }
}

struct NewMusicView_Previews: PreviewProvider {
    static var previews: some View {
        NewMusicView()
    }
}
