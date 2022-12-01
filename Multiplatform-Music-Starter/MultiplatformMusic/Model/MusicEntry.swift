//
//  MusicEntry.swift
//  MultiplatformProject
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import Foundation
import SwiftUI

struct MusicEntry: Identifiable {
    
    var id = UUID()
    var category: String?
    var title: String
    var artist: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
}
