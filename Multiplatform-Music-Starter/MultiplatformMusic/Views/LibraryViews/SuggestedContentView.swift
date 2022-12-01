//
//  SuggestedContentView.swift
//  MultiplatformMusic
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import SwiftUI

struct SuggestedContentView: View {
    
    @StateObject var viewModel = SuggestedContentViewModel()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(viewModel.suggestedContent) { suggestion in
                    SuggestedContentCellView(category: suggestion.category, title: suggestion.title, artist: suggestion.artist, image: suggestion.image)
                }
            }
            .padding([.leading, .trailing], 18)
            .padding(.bottom, 20)
        }
    }
}


struct SuggestedContentView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestedContentView()
    }
}
