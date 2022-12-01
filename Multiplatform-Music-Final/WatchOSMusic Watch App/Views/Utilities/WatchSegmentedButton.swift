//
//  WatchSegmentedButton.swift
//  WatchOSMusic Watch App
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import SwiftUI

struct WatchSegmentedButton: View {
    
    @Binding var selectedOption: Int
    var imageSystemName: String
    var tag: Int
    private let deselectedColor = Color(.sRGB, red: 65/255, green: 13/255, blue: 20/255)
    
    var body: some View {
        Button(action: {
            selectedOption = tag
        }) {
            Image(systemName: imageSystemName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40)
                .background(selectedOption == tag ? .pink : deselectedColor)
                .foregroundColor(selectedOption == tag ? .white : .pink)
        }.tag(tag)
            .buttonStyle(PlainButtonStyle())
    }
}


struct WatchSegmentedButton_Previews: PreviewProvider {
    static var previews: some View {
        WatchSegmentedButton(selectedOption: .constant(0), imageSystemName: "iphone", tag: 0)
    }
}
