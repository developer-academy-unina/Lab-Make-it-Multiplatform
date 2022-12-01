//
//  SectionHeaderView.swift
//  MultiplatformMusic
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import SwiftUI

struct SectionHeaderView: View {
    
    let sectionTitle: String
    let buttonText: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Divider()
                .background(.gray)
            HStack {
                Text(sectionTitle)
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                Spacer()
                Button(buttonText) {}
                .font(.system(size: 18))
                .foregroundColor(.pink)
                .buttonStyle(PlainButtonStyle())
            }
            .offset(x: 0, y: 5)
        }
    }
}


struct SectionHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeaderView(sectionTitle: "Playlists You Can't Miss", buttonText: "See All")
    }
}
