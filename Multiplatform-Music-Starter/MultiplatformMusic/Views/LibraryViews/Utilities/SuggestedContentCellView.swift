//
//  SuggestedContentCellView.swift
//  MultiplatformMusic
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import SwiftUI

struct SuggestedContentCellView: View {
    
    let category: String?
    let title: String
    let artist: String
    let image: Image
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(category?.uppercased() ?? "")
                .font(.system(size: 12))
                .foregroundColor(.secondary)
            Text(title.uppercased())
                .font(.system(size: 23))
                .fontWeight(.medium)
            Text(artist)
                .font(.system(size: 23))
                .foregroundColor(.secondary)
            image
                .foregroundColor(.white)
                .font(.largeTitle)
                .frame(width: 364, height: 253)
                .background(.gray)
                .cornerRadius(5)
        }
    }
}


struct SuggestedContentCellView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestedContentCellView(category: "New single + pre-add now", title: "Materia (Terra)", artist: "Marco Mengoni", image: Image("Suggested0"))
    }
}
